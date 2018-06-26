
//Address: 0xd07e6506e4f470392f73ac69d75b41df53d925d2
//Contract name: SafeMathLib
//Balance: 0 Ether
//Verification Date: 6/1/2017
//Transacion Count: 1

// CODE STARTS HERE

library SafeMathLib {
  function times(uint a, uint b) returns (uint) {
    uint c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function minus(uint a, uint b) returns (uint) {
    assert(b <= a);
    return a - b;
  }

  function plus(uint a, uint b) returns (uint) {
    uint c = a + b;
    assert(c>=a && c>=b);
    return c;
  }

  function assert(bool assertion) private {
    if (!assertion) throw;
  }
}
