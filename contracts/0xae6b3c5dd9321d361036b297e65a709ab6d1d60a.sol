
//Address: 0xae6b3c5dd9321d361036b297e65a709ab6d1d60a
//Contract name: NameTracker
//Balance: 0 Ether
//Verification Date: 10/13/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract NameTracker {
  address creator;
  string public name;

  function NameTracker(string initialName) {
    creator = msg.sender;
    name = initialName;
  }
  
  function update(string newName) {
    if (msg.sender == creator) {
      name = newName;
    }
  }

  function getBlockNumber() constant returns (uint)
  {
    return block.number;
  }

  function kill() {
    if (msg.sender == creator) suicide(creator);
  }
}
