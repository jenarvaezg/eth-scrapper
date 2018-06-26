
//Address: 0xf4f0da9aa9a109f4963c73a550e81944a4299078
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 9/19/2017
//Transacion Count: 18

// CODE STARTS HERE

pragma solidity ^0.4.11;

// Provided by Truffle.
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
