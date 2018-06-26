
//Address: 0x8473671723b0bd2a73150d1d647980811b2a99e8
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 5/14/2018
//Transacion Count: 3

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
