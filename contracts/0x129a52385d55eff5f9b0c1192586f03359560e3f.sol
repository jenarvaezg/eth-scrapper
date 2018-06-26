
//Address: 0x129a52385d55eff5f9b0c1192586f03359560e3f
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 10/28/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;
 
contract HelloWorld {
    
    function getData() constant returns (string) {
        return "Hello, world!";
    }
    
}
