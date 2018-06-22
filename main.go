package main

import (
	"bytes"
	"fmt"
	"html"
	"log"
	"os"
	"strconv"
	"strings"
	"sync"
	"text/template"
	"time"

	"github.com/gocolly/colly"
)

type contract struct {
	Address         string
	Balance         string
	ContractName    string
	CompilerVersion string
	DateVerified    string
	TxCount         string
	Code            string
}

const etherscanURL = "https://etherscan.io"

const contractTemplate = `
//Address: {{.Address}}
//Contract name: {{.ContractName}}
//Balance: {{.Balance}}
//Verification Date: {{.DateVerified}}
//Transacion Count: {{.TxCount}}

// CODE STARTS HERE

{{.Code}}
`

func getPageCount() (int, error) {
	selector := "body > div.wrapper > div.profile.container > div:nth-child(4) > div:nth-child(2) > p > span > b:nth-child(2)"
	var npages int
	var atoiErr error

	c := colly.NewCollector()
	c.OnHTML(selector, func(e *colly.HTMLElement) {
		npages, atoiErr = strconv.Atoi(e.Text)
	})

	err := c.Visit(fmt.Sprintf("%s/contractsVerified", etherscanURL))
	if atoiErr != nil {
		return 0, atoiErr
	}

	return npages, err
}

func getContractsForPage(page int) ([]contract, error) {
	tableBodySelector := "body > div.wrapper > div.profile.container > div:nth-child(3) > div > div > div > table > tbody "
	codeSelector := "#editor"
	contracts := make(map[string]contract)

	c := colly.NewCollector(
		// Turn on asynchronous requests
		colly.Async(true),
	)
	c.Limit(&colly.LimitRule{
		DomainGlob:  "*etherscan.*",
		Parallelism: 1,
		Delay:       1 * time.Second,
	})

	c.OnHTML(tableBodySelector, func(table *colly.HTMLElement) {
		table.ForEach("tr", func(i int, e *colly.HTMLElement) {
			c := contract{
				Address:         e.ChildText("td:nth-child(1) > a"),
				ContractName:    e.ChildText("td:nth-child(2)"),
				CompilerVersion: e.ChildText("td:nth-child(3)"),
				Balance:         e.ChildText("td:nth-child(4)"),
				TxCount:         e.ChildText("td:nth-child(5)"),
				DateVerified:    e.ChildText("td:nth-child(7)"),
			}
			contracts[c.Address] = c
			if err := e.Request.Visit(fmt.Sprintf("%s/address/%s", etherscanURL, c.Address)); err != nil {
				fmt.Printf("Error requesting %s: %v", fmt.Sprintf("%s/address/%s", etherscanURL, c.Address), err)
			}
		})
	})

	c.OnHTML(codeSelector, func(e *colly.HTMLElement) {
		address := strings.Split(e.Request.URL.RequestURI(), "/")[2]
		c := contracts[address]

		c.Code = html.UnescapeString(e.Text)
		fmt.Println("GETTING", c.ContractName, c.Address)

		contracts[address] = c
	})

	c.OnResponse(func(r *colly.Response) {
		if bytes.Contains(r.Body, []byte("{Request Throttled}")) {
			r.Request.Retry()
		}

	})

	if err := c.Visit(fmt.Sprintf("%s/contractsVerified/%d", etherscanURL, page)); err != nil {
		return nil, err
	}
	c.Wait()

	contractsSlice := []contract{}
	for _, c := range contracts {
		contractsSlice = append(contractsSlice, c)
	}

	return contractsSlice, nil
}

func storeContracts(contractsChan chan []contract) {
	t := template.Must(template.New("contract").Parse(contractTemplate))
	for contracts := range contractsChan {
		for _, c := range contracts {
			go func(c contract) {
				f, err := os.Create(fmt.Sprintf("contracts/%s.sol", c.Address))
				if err != nil {
					fmt.Printf("Error storing contract %s: %v\n", c.Address, err)
				}
				defer f.Close()

				if err := t.Execute(f, c); err != nil {
					fmt.Printf("Error saving contract %s: %v\n", c.Address, err)
				}
			}(c)
		}
	}
}

func init() {
	if err := os.Mkdir("contracts", 0775); err != nil && !os.IsExist(err) {
		log.Fatalf("Error creating contracts directory: %v\n", err)
	}
}

func main() {
	pageCount, err := getPageCount()
	if err != nil {
		log.Fatalf("Error getting page count: %v\n", err)
	}
	log.Printf("Going to search through %d pages of contracts\n", pageCount)

	var wg sync.WaitGroup
	wg.Add(pageCount)

	sem := make(chan bool, 2)
	contractsChan := make(chan []contract)
	for i := 0; i < pageCount; i++ {
		go func(pos int) {
			defer wg.Done()
			sem <- true //acquire

			contracts, err := getContractsForPage(pos)
			if err != nil {
				log.Printf("Error getting contracts for page %d: %v\n", pos, err)
			}

			fmt.Println("Done with page", pos)
			contractsChan <- contracts
			<-sem // release
		}(i + 1)
	}

	go storeContracts(contractsChan)

	wg.Wait()
}
