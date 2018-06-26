
//Address: 0x258f4a2b9318849a92bff86dbf8dad166617ec96
//Contract name: Eventer
//Balance: 0 Ether
//Verification Date: 11/9/2017
//Transacion Count: 23

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract Eventer {
  event Record(
    address _from,
    string _message
  );

  function record(string message) {
    Record(msg.sender, message);
  }
}
