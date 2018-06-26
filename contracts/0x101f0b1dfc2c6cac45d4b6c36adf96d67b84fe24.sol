
//Address: 0x101f0b1dfc2c6cac45d4b6c36adf96d67b84fe24
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 2/26/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.17;


contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) {
      _;
    }
  }

  function Migrations() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address newAddress) public restricted {
    Migrations upgraded = Migrations(newAddress);
    upgraded.setCompleted(last_completed_migration);
  }
}
