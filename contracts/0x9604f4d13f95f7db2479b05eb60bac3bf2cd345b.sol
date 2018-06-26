
//Address: 0x9604f4d13f95f7db2479b05eb60bac3bf2cd345b
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 11/27/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;
contract HelloWorld {
    
    function getData() public constant returns (string) {
        return "Hello, world!";
    }
   
}
