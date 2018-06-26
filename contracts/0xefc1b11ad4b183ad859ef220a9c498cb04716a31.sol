
//Address: 0xefc1b11ad4b183ad859ef220a9c498cb04716a31
//Contract name: Counter
//Balance: 0 Ether
//Verification Date: 4/16/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.20;

contract Counter {
    
    event Won(address winner, uint amount);
    
    uint public i;
    address public owner;
    
    function Counter() public {
        owner = msg.sender;
    }
    
    function reset() public {
        require(msg.sender==owner);
        i=0;
    }
    
    function inc() public payable {
        require(msg.value >= 0.001 ether);
        i++;
        if (i==2) {
            emit Won(msg.sender,address(this).balance);
            msg.sender.transfer(address(this).balance);
            i = 0;
        }
    }
    
}
