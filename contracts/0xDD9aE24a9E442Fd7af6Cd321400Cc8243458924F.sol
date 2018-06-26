
//Address: 0xDD9aE24a9E442Fd7af6Cd321400Cc8243458924F
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 1/10/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract HelloWorld {
    
    string wellcomeString = "Hello, world!";
    
    function getData() public constant returns (string) {
        return wellcomeString;
    }
    
    function setData(string newData) public {
        wellcomeString = newData;
    }
    
}
