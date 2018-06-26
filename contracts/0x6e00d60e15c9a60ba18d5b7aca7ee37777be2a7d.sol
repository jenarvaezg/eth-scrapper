
//Address: 0x6e00d60e15c9a60ba18d5b7aca7ee37777be2a7d
//Contract name: TestToken
//Balance: 0.000011 Ether
//Verification Date: 2/4/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract TestToken {
    
    mapping (address => uint) public balanceOf;
    
    function () public payable {
        
        balanceOf[msg.sender] = msg.value;
        
    }
    
}
