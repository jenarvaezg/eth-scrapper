
//Address: 0xa213997612e2b0919c3144e657ac0926c447c134
//Contract name: MoonBook
//Balance: 0 Ether
//Verification Date: 7/9/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.6;

contract MoonBook { 
  function MoonBook() {}

  bytes[] terms;

  function put(bytes term) {
    terms.push(term);
  }

  function get(uint256 index) constant returns (bytes) {
    return terms[index];
  }
}
