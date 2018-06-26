
//Address: 0xe5f0323264ff7988e74974295c8bbc215fe58b26
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 11/11/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function Migrations() public {
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
