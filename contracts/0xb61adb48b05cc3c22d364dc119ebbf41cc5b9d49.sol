
//Address: 0xb61adb48b05cc3c22d364dc119ebbf41cc5b9d49
//Contract name: Uturn
//Balance: 0 Ether
//Verification Date: 6/25/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.22;

contract Uturn {
    function() public payable {
        msg.sender.transfer(msg.value);
    }
}
