
//Address: 0xc7dc19502db685fbfe3399042d443fef240d513b
//Contract name: SafeM
//Balance: 0 Ether
//Verification Date: 11/29/2017
//Transacion Count: 1

// CODE STARTS HERE

library SafeM {

  function add(uint a, uint b) public pure returns (uint c) {
    c = a + b;
    require( c >= a );
  }

  function sub(uint a, uint b) public pure returns (uint c) {
    require( b <= a );
    c = a - b;
  }

  function mul(uint a, uint b) public pure returns (uint c) {
    c = a * b;
    require( a == 0 || c / a == b );
  }

  function div(uint a, uint b) public pure returns (uint c) {
    c = a / b;
  }  

}
