
//Address: 0xc02a152f5f5448e47624ca30f41b6540be30008f
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 5/14/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity 0.4.19;

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
