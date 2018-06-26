
//Address: 0xc4c89dd46524c6f704e92a9cd012a3ebadadff36
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 4/21/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract HelloWorld {
    address public owner;
    
    modifier onlyOwner() { require(msg.sender == owner); _; }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function salutaAndonio() public pure returns(bytes32 hw) {
        hw = "HelloWorld";
    }
    
    function killMe() public onlyOwner {
        selfdestruct(owner);
    }
    
}
