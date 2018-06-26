
//Address: 0xac39f18604db65107700eccfaa379d06dbfa630c
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 4/12/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.17;

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
