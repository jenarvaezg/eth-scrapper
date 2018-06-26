
//Address: 0x5515c7c8420d203a30eea9cdbf166e84ab7900c7
//Contract name: OriginalMyDocAuthenticity
//Balance: 0 Ether
//Verification Date: 5/9/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract OriginalMyDocAuthenticity {
    
  mapping (string => uint) private authenticity;

  function storeAuthenticity(string sha256) {
    if (checkAuthenticity(sha256) == 0) {
        authenticity[sha256] = now;
    }   
  }

  function checkAuthenticity(string sha256) constant returns (uint) {
    return authenticity[sha256];
  }
}
