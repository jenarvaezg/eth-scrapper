
//Address: 0x67af54d9e20fe6f9dd2dfe0449ed65f97a3638de
//Contract name: MultiSender
//Balance: 0 Ether
//Verification Date: 5/30/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract MultiSender {
    function multiSend(uint256 amount, address[] addresses) public returns (bool) {
        for (uint i = 0; i < addresses.length; i++) {
            addresses[i].transfer(amount);
        }
    }

    function () public payable {
        
    }
}
