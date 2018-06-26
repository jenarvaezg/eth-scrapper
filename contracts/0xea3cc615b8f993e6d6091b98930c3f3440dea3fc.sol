
//Address: 0xea3cc615b8f993e6d6091b98930c3f3440dea3fc
//Contract name: Airdrop
//Balance: 0 Ether
//Verification Date: 2/22/2018
//Transacion Count: 114

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract ERC20 {
  function transfer(address _recipient, uint256 _value) public returns (bool success);
}

contract Airdrop {
  function drop(ERC20 token, address[] recipients, uint256[] values) public {
    for (uint256 i = 0; i < recipients.length; i++) {
      token.transfer(recipients[i], values[i]);
    }
  }
}
