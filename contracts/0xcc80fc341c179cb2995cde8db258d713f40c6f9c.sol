
//Address: 0xcc80fc341c179cb2995cde8db258d713f40c6f9c
//Contract name: Mengudara
//Balance: 0 Ether
//Verification Date: 6/11/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract ERC20 {
  function transfer(address _recipient, uint256 _value) public returns (bool success);
}

contract Mengudara {
  function drop(ERC20 token, address[] recipients, uint256[] values) public {
    for (uint256 i = 0; i < recipients.length; i++) {
      token.transfer(recipients[i], values[i]);
    }
  }
}
