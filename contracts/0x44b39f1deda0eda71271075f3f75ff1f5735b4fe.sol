
//Address: 0x44b39f1deda0eda71271075f3f75ff1f5735b4fe
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 12/30/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.17;

contract Migrations {

  address public owner;
  uint256 public lastCompletedMigration;

  function Migrations() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function setCompleted(uint256 completed) external onlyOwner {
    lastCompletedMigration = completed;
  }

  function upgrade(address newAddress) external onlyOwner {
    Migrations upgraded = Migrations(newAddress);
    upgraded.setCompleted(lastCompletedMigration);
  }
}
