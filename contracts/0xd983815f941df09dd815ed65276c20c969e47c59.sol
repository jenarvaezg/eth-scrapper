
//Address: 0xd983815f941df09dd815ed65276c20c969e47c59
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 1/15/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.17;

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
