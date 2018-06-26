
//Address: 0x3aaa249971bb18e2a257b536cc2ab2f91582bb96
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 6/20/2018
//Transacion Count: 13

// CODE STARTS HERE

pragma solidity ^0.4.18;


// Provided by Truffle.
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
