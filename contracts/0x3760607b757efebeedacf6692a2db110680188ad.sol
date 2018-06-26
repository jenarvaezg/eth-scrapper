
//Address: 0x3760607b757efebeedacf6692a2db110680188ad
//Contract name: MyContract
//Balance: 0 Ether
//Verification Date: 6/27/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract MyContract {
  string word = "All men are created equal!";

  function getWord() returns (string){
    return word;
  }

}
