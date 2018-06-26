
//Address: 0x448b142f7607cfb163919a0c6252c393327d54b3
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 10/28/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.13;
 
contract HelloWorld {
    
    string wellcomeString = "Hello, world!";
    
    function getData() constant returns (string) {
        return wellcomeString;
    }
    
    function setData(string newData) {
        wellcomeString = newData;
    }
    
}
