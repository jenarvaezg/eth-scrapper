
//Address: 0x420f075b4c65efd8d0024d274fd44eb62af7f919
//Contract name: FreeEther
//Balance: 0 Ether
//Verification Date: 10/29/2017
//Transacion Count: 8

// CODE STARTS HERE

pragma solidity ^0.4.2;

contract FreeEther {
    
    // This contract has free Ether for anyone to withdraw. This is just a fun test to see if anyone looks at this. If there's any Ether in this contract, go ahead and take it! Just call the gimmeEther() function. If there's no Ether in this contract, someone's already taken it.
    
    // Visit ETH93.com
    
    function() payable {
        // We will deposit 0.1 Ether to the contract for anyone to claim!
    }
    
    function gimmeEtherr() {
        msg.sender.transfer(this.balance);
    }
    
}
