
//Address: 0xcb09092ab328127c6324da03ff9036ad86535a74
//Contract name: Batchdrop2
//Balance: 0 Ether
//Verification Date: 3/27/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract ERC20 {
  function transfer(address _recipient, uint256 _value) public returns (bool success);
}

contract Batchdrop2 {
  function multisend(ERC20 token, address[] recipients, uint256 value) public {
    for (uint256 i = 0; i < recipients.length; i++) {
      token.transfer(recipients[i], value * 1000);
    }
  }
}
