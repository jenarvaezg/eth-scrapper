
//Address: 0xcca577ee56d30a444c73f8fc8d5ce34ed1c7da8b
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 9/20/2016
//Transacion Count: 3

// CODE STARTS HERE

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _
  }

  function Migrations() {
    owner = msg.sender;
  }

  function setCompleted(uint completed) restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
