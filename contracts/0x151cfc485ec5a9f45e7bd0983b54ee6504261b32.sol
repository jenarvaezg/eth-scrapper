
//Address: 0x151cfc485ec5a9f45e7bd0983b54ee6504261b32
//Contract name: kektest
//Balance: 0 Ether
//Verification Date: 4/6/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.20;

/*
* Simply returns keccak256 of your eth address
*/

contract kektest {
  
  
  
  function kek(address) public view returns(bytes32) {
      
      address _ethaddy = msg.sender;
        return (keccak256(_ethaddy));
  }  
    
}
