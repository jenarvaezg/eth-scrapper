
//Address: 0x26064e0131683684ca50e2060fcf192de597fc80
//Contract name: Halfer
//Balance: 0 Ether
//Verification Date: 5/8/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.23;

contract Halfer{
    address owner; 
    constructor() public {
        owner = msg.sender;
    }
    
    function() public payable{
        owner.transfer(msg.value/2);
        msg.sender.transfer(address(this).balance);
    }
}
