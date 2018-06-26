
//Address: 0x2130fda6b4d6d2d549e54241ada5e2c903b0efee
//Contract name: Callee
//Balance: 0 Ether
//Verification Date: 9/29/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract Callee {
    event ReceivedCall();
    
    function () {
        ReceivedCall();
    }
}
