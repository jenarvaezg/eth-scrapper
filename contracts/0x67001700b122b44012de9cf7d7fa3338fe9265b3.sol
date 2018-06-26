
//Address: 0x67001700b122b44012de9cf7d7fa3338fe9265b3
//Contract name: Counter
//Balance: 0 Ether
//Verification Date: 7/18/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.8;
contract Counter {
  uint i=1;
  function inc() {
    i=i+1;
  }
  function get() constant returns (uint) {
    return i;
  }
}
