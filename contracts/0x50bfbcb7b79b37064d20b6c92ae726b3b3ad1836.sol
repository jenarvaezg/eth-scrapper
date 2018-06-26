
//Address: 0x50bfbcb7b79b37064d20b6c92ae726b3b3ad1836
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 11/21/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.15;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner)
    _;
  }

  function Migrations() public {
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
