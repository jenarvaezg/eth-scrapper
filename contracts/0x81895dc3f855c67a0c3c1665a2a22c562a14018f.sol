
//Address: 0x81895dc3f855c67a0c3c1665a2a22c562a14018f
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 5/24/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.23;

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
