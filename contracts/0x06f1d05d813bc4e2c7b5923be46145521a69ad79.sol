
//Address: 0x06f1d05d813bc4e2c7b5923be46145521a69ad79
//Contract name: Mengudara
//Balance: 0 Ether
//Verification Date: 4/3/2018
//Transacion Count: 2

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
