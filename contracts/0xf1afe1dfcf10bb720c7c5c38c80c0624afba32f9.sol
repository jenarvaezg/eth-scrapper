
//Address: 0xf1afe1dfcf10bb720c7c5c38c80c0624afba32f9
//Contract name: Airdrop
//Balance: 0 Ether
//Verification Date: 6/17/2018
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.18;


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
