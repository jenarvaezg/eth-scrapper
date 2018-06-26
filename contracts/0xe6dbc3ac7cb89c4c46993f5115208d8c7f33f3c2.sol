
//Address: 0xe6dbc3ac7cb89c4c46993f5115208d8c7f33f3c2
//Contract name: WordCloud
//Balance: 0 Ether
//Verification Date: 3/30/2018
//Transacion Count: 13

// CODE STARTS HERE

pragma solidity ^0.4.19;

// Add your message to the word cloud: https://jamespic.github.io/ether-wordcloud

contract WordCloud {
  address guyWhoGetsPaid = msg.sender;
  mapping (string => uint) wordSizes;
  event WordSizeIncreased(string word, uint newSize);

  function increaseWordSize(string word) external payable {
    wordSizes[word] += msg.value;
    guyWhoGetsPaid.transfer(this.balance);
    WordSizeIncreased(word, wordSizes[word]);
  }

  function wordSize(string word) external view returns (uint) {
    return wordSizes[word];
  }
}
