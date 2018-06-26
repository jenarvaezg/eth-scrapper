
//Address: 0xbd359982380ac722d99d0e1c8f1181bf174ab496
//Contract name: Migrations
//Balance: 0 Ether
//Verification Date: 10/4/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.4;

//  ■■■■   ■■■■■■  ■     ■
// ■   ■■  ■       ■■   ■ 
// ■       ■        ■■ ■■ 
// ■■      ■         ■■■  
//   ■■■   ■■■■■     ■■   
//     ■■  ■         ■■■  
//      ■  ■        ■■ ■■ 
// ■    ■  ■       ■■   ■ 
//  ■■■■   ■■■■■■  ■     ■

contract Migrations {
  address public owner;

  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) {
      _;
    }
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
