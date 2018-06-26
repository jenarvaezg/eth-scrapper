
//Address: 0x45ea88d3e2199310799ce63eccc5f6296f59e370
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 11/23/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.15;


contract Migrations {
    address public owner;

    uint public last_completed_migration;

    modifier restricted() {
        if (msg.sender == owner) _;
    }

    function Migrations() {
        owner = msg.sender;
    }

    function setCompleted(uint completed) restricted {
        last_completed_migration = completed;
    }

    function upgrade(address new_address) restricted {
        Migrations upgraded = Migrations(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}
