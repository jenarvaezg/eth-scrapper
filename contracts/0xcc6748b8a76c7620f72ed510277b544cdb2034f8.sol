
//Address: 0xcc6748b8a76c7620f72ed510277b544cdb2034f8
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 4/29/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity 0.4.21;

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
