
//Address: 0x297e7ff69869144740198bcdfb6aa53db677e4ca
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 2/26/2018
//Transacion Count: 7

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
