
//Address: 0xc6b13d41866cba306fe9ddfafd580ac8d92bfb75
//Contract name: SendBack
//Balance: 0 Ether
//Verification Date: 11/9/2016
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity 0.4.4; // optimization enabled

contract SendBack {
    function() payable {
        if (!msg.sender.send(msg.value))
            throw;
    }
}
