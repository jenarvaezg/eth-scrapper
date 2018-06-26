
//Address: 0xf5f2a533b065125c5edb3cc0119c7866020de4cf
//Contract name: IntervalLib
//Balance: 0 Ether
//Verification Date: 9/10/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.15;

library IntervalLib {
  struct Interval {
    uint begin;
    uint end;
    bytes32 data;
  }
}
