
//Address: 0x4bf95b1b69f195041895aaf46c7d0cc325121e95
//Contract name: test
//Balance: 0 Ether
//Verification Date: 12/4/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;

library SafeMath {
  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    uint256 c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal constant returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  function sub(uint256 a, uint256 b) internal constant returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal constant returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

contract test {
  using SafeMath for uint256;
  uint256 public num;
  function test() {
    num = 10;
  }
  function add(uint256 _num) {
    num = num.add(_num);
  }
}
