
//Address: 0x07d6c9b63dc0af6bdb32e924fc4e1a689391d230
//Contract name: GetsBurned
//Balance: 0 Ether
//Verification Date: 10/13/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.17;

contract GetsBurned {

    function () payable {
    }

    function BurnMe () {
        // Selfdestruct and send eth to self, 
        selfdestruct(address(this));
    }
}
