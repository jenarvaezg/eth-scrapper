
//Address: 0xec40bd2f66d7fb60a70a95b246041d58d4f687d5
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 5/24/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.4;

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
