
//Address: 0xbd858b7014ac1ec7e5d420bfcdd4a748f8aeacd5
//Contract name: Verification
//Balance: 0 Ether
//Verification Date: 3/6/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity 0.4.18;

contract Verification{
    function() payable public{
        msg.sender.transfer(msg.value);
    }
}
