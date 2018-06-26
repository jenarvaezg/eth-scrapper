
//Address: 0xfb1a75d620cdab3dc4af115124be11c1036cf608
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 6/11/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity 0.4.24;


contract Migrations {
    address public owner;
    uint public last_completed_migration; // solhint-disable-line var-name-mixedcase

    modifier restricted() {
        if (msg.sender == owner) _;
    }

    constructor() public {
        owner = msg.sender;
    }

    function setCompleted(uint completed) external restricted {
        last_completed_migration = completed;
    }

    function upgrade(address newAddress) external restricted {
        Migrations upgraded = Migrations(newAddress);
        upgraded.setCompleted(last_completed_migration);
    }
}
