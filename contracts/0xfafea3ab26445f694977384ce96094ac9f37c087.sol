
//Address: 0xfafea3ab26445f694977384ce96094ac9f37c087
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 9/16/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.4;


contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) {
      _;
    }
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
