
//Address: 0x1ab8991d086831556b5846760f527b0b0b4f4af5
//Contract name: s_Form001
//Balance: 0 Ether
//Verification Date: 10/31/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.13;
 
contract s_Form001 {
    
    mapping (bytes32 => string) data;
    
    address owner;
    
    function s_Form001() {
        owner = msg.sender;

    }
    
    function setData(string key, string value) {
        require(msg.sender == owner);
        data[sha3(key)] = value;
    }
    
    function getData(string key) constant returns(string) {
        return data[sha3(key)];
    }

/*
0x1aB8991D086831556b5846760F527B0b0b4F4aF5
*/
}
