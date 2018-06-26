
//Address: 0xa235acbb4c265bc49acce88f5b627577967c182b
//Contract name: holdEthereum
//Balance: 0 Ether
//Verification Date: 6/1/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;
contract holdEthereum {
    event Hodl(address indexed hodler, uint indexed amount);
    event Party(address indexed hodler, uint indexed amount);
    mapping (address => uint) holders;
    
    uint constant partyTime = 1596067200; // Time funds can be withdrawn. 30th July 2020
    
    function() payable {
        holders[msg.sender] += msg.value;
        Hodl(msg.sender, msg.value);
    }
    
    function party() {
        if (block.timestamp < partyTime) throw;
        uint value = holders[msg.sender];
        if (value == 0) throw;
        holders[msg.sender] = 0;
        msg.sender.transfer(value);
        Party(msg.sender, value);
    }
}
