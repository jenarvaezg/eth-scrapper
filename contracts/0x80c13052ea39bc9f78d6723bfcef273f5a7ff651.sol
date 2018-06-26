
//Address: 0x80c13052ea39bc9f78d6723bfcef273f5a7ff651
//Contract name: test
//Balance: 0 Ether
//Verification Date: 12/4/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract test {
  uint256 public totalSupply;
  function test(uint256 _totalSupply) {
    totalSupply = _totalSupply;
  }
  function add(uint256 _add) {
    if (_add > 0) {
      totalSupply += _add;
    } else {
      totalSupply++;
    }
  }
}
