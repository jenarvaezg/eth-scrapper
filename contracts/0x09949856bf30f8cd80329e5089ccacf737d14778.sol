
//Address: 0x09949856bf30f8cd80329e5089ccacf737d14778
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 6/12/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.2;

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
