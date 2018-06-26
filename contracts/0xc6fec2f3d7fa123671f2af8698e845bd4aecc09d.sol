
//Address: 0xc6fec2f3d7fa123671f2af8698e845bd4aecc09d
//Contract name: TxnFee
//Balance: 0 Ether
//Verification Date: 5/15/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.20;

contract TxnFee {
    address public owner;
    address public primary_wallet;
    
    constructor (address main_wallet) public {
        owner = msg.sender;
        primary_wallet = main_wallet;
    }
    
    event Contribution (address investor, uint256 eth_paid);
    
    function () public payable {
        emit Contribution(msg.sender, msg.value);
        primary_wallet.transfer(msg.value);
    }
}
