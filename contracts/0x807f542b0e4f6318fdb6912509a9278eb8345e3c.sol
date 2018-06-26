
//Address: 0x807f542b0e4f6318fdb6912509a9278eb8345e3c
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 5/30/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.17;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  constructor() public {
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
