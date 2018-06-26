
//Address: 0x25690aa07c4b1de261523380897f374d90a19f02
//Contract name: GBank
//Balance: 0 Ether
//Verification Date: 4/9/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract GBank {

    address creator;

    mapping (address => uint) balances;

    function GBank(uint startAmount) {
        balances[msg.sender] = startAmount;
        creator = msg.sender;
    }

    function getBalance(address a) constant returns (uint) {
        return balances[a];
    }

    function transfer(address to, uint amount) {

        // Don't allow sending to self
        if (msg.sender == to) {
            throw;
        }

        // Check if sender has sufficient balance to send
        if (amount > balances[msg.sender]) {
            throw;
        }

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}
