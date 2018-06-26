
//Address: 0xf07bb9fb305e6537b1d68f5b3ecdb02334fd9e79
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 6/4/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Migrations {
  address public owner;
  uint256 public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  constructor() public {
    owner = msg.sender;
  }

  function setCompleted(uint256 completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
