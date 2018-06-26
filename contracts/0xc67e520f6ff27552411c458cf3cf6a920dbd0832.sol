
//Address: 0xc67e520f6ff27552411c458cf3cf6a920dbd0832
//Contract name: MessaggioInBottiglia
//Balance: 0 Ether
//Verification Date: 4/22/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract MessaggioInBottiglia {
    address public owner; //proprietario del contratto
    string public message; //messaggio da lanciare
    string public ownerName;
    
    mapping(address => string[]) public comments; //commenti
    
    modifier onlyOwner() { require(owner == msg.sender); _; }
    
    event newComment(address _sender, string _comment);
    
    constructor() public { //costruttore del contratto
        owner = msg.sender;
        ownerName = "Gaibrasch Tripfud";
        message = "Questo è messaggio di prova, scritto dal un temibile pirata. Aggiungi un commento se vuoi scopire dove si trova il tesoro nascosto.";
    }
    
    function addComment(string commento) public payable returns(bool){ //aggiunge testo al contratto
        comments[msg.sender].push(commento);
        emit newComment(msg.sender, commento);
        return true;
    }
    
    function destroyBottle() public onlyOwner { //distrugge la bottiglia e il messaggio e quindi tutto il contratto
        selfdestruct(owner);
    }
}
