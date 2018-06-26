
//Address: 0xc2c58a79db674f8f75190e0f1e18f3c8ea7d4554
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 6/22/2018
//Transacion Count: 11

// CODE STARTS HERE

pragma solidity ^0.4.15;

// File: contracts/Migrations.sol

contract Migrations {
  address public owner;
  uint256 public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner)
      _;
  }

  constructor() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) restricted public {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) restricted public {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
