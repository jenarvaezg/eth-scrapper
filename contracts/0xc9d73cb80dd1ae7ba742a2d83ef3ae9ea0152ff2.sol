
//Address: 0xc9d73cb80dd1ae7ba742a2d83ef3ae9ea0152ff2
//Contract name: TxnFee
//Balance: 0 Ether
//Verification Date: 6/1/2018
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
