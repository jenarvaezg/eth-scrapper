
//Address: 0xa53e8941bf6aef2f3e99aaf2787e05e9c6a11c70
//Contract name: CodexBeta
//Balance: 0 Ether
//Verification Date: 4/24/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.16;
 
contract CodexBeta {
    struct MyCode {
        string code;
    }
    event Record(string code);
    function record(string code) public {
        registry[msg.sender] = MyCode(code);
    }
    mapping (address => MyCode) public registry;
}
