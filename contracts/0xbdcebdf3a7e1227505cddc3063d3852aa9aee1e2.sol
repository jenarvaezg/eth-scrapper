
//Address: 0xbdcebdf3a7e1227505cddc3063d3852aa9aee1e2
//Contract name: BusinessCardAM
//Balance: 0 Ether
//Verification Date: 10/24/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract BusinessCardAM {
    
    mapping (bytes32 => string) variables;
    
    function setVar(string key, string value) {
        variables[sha3(key)] = value;
    }
    
    function getVar(string key) constant returns(string) {
        return variables[sha3(key)];
    }
}
