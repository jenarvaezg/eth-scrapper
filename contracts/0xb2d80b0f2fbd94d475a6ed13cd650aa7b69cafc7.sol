
//Address: 0xb2d80b0f2fbd94d475a6ed13cd650aa7b69cafc7
//Contract name: dubbel
//Balance: 0 Ether
//Verification Date: 6/21/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.20;

contract dubbel {
    address public previousSender;
    uint public price = 0.001 ether;
    
    function() public payable {
            require(msg.value == price);
            previousSender.transfer(msg.value);
            price *= 2;
            previousSender = msg.sender;
    }
}
