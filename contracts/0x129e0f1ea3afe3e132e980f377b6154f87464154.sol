
//Address: 0x129e0f1ea3afe3e132e980f377b6154f87464154
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 12/19/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;

// @dev Generated and used by the Truffle framework
contract Migrations {
    address public owner;
    uint256 public last_completed_migration;

    modifier restricted() {
        if (msg.sender == owner)
        _;
    }

    function Migrations() public {
        owner = msg.sender;
    }

    function setCompleted(uint256 completed) public restricted {
        last_completed_migration = completed;
    }

    function upgrade(address newAddress) public restricted {
        Migrations upgraded = Migrations(newAddress);
        upgraded.setCompleted(last_completed_migration);
    }
}
