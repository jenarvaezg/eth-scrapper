
//Address: 0xdfd4b715b0546dad062848d8ca7ccdc1ecaf9dcf
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 11/25/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.4;

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
