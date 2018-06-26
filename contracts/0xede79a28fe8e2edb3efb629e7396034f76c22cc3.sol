
//Address: 0xede79a28fe8e2edb3efb629e7396034f76c22cc3
//Contract name: FreeMoney
//Balance: 0 Ether
//Verification Date: 1/27/2018
//Transacion Count: 8

// CODE STARTS HERE

pragma solidity ^0.4.18;

// Free money. No bamboozle.
// By NR
contract FreeMoney {
    
    uint public remaining;
    
    function FreeMoney() public payable {
        remaining += msg.value;
    }
    
    // Feel free to give money to whomever
    function() payable {
        remaining += msg.value;
    }
    
    // You're welcome?!
    function withdraw() public {
        remaining = 0;
        msg.sender.transfer(this.balance);
    }
}
