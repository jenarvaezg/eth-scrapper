
//Address: 0xCf30C96fC754a4F576713B7f993aE03b739A5A97
//Contract name: SafeMathLibExt
//Balance: 0 Ether
//Verification Date: 3/8/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.6;


library SafeMathLibExt {

  function times(uint a, uint b) returns (uint) {
    uint c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function divides(uint a, uint b) returns (uint) {
    assert(b > 0);
    uint c = a / b;
    assert(a == b * c + a % b);
    return c;
  }

  function minus(uint a, uint b) returns (uint) {
    assert(b <= a);
    return a - b;
  }

  function plus(uint a, uint b) returns (uint) {
    uint c = a + b;
    assert(c>=a);
    return c;
  }

}
