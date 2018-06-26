
//Address: 0xbe16ba60960a5e92bc878814dddc736252db8f32
//Contract name: DappTutorial
//Balance: 0 Ether
//Verification Date: 8/23/2017
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract DappTutorial {
  uint storedData;

  function set(uint x) {
    storedData = x;
  }

  function get() constant returns (uint) {
    return storedData * 2;
  }
}
