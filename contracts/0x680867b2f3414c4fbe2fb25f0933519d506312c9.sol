
//Address: 0x680867b2f3414c4fbe2fb25f0933519d506312c9
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 4/13/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.21;


contract Migrations {
    address public owner;
    uint public last_completed_migration;

    modifier restricted() {
        if (msg.sender == owner) _;
    }

    function Migrations() public {
        owner = msg.sender;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }

    function upgrade(address new_address) public restricted {
        Migrations upgraded = Migrations(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}
