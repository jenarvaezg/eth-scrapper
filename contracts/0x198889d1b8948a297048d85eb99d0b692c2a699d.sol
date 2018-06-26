
//Address: 0x198889d1b8948a297048d85eb99d0b692c2a699d
//Contract name: TheRichest
//Balance: 0 Ether
//Verification Date: 12/13/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract TheRichest {
    address owner;
    
    address public theAddress;
    uint256 public theBid;

    function TheRichest() public {
        owner = msg.sender;
        theAddress = msg.sender;
        theBid = 1;
    }
    
    //pay to become theAddress with richest label
    function () public payable {
        if (msg.value > theBid) {
            theAddress = msg.sender;
            theBid = msg.value;
        }
    }
    
    // all money will go to dogcharity projects
    function gameOver() public {
        if (msg.sender == owner) {
          selfdestruct(owner);
        }
    }
    
}
