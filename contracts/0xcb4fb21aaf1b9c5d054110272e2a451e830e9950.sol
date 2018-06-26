
//Address: 0xcb4fb21aaf1b9c5d054110272e2a451e830e9950
//Contract name: TxnFee
//Balance: 0 Ether
//Verification Date: 5/23/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.20;

contract TxnFee {
    address public owner;
    address public primary_wallet;
    address public thirty_wallet;
    uint256 public collected_eth;
    
    constructor (address main_wallet, address first) public {
        owner = msg.sender;
        primary_wallet = main_wallet;
        thirty_wallet = first;
        collected_eth = 0;
    }
    
    event Contribution (address investor, uint256 eth_paid);
    
    function () public payable {
        emit Contribution(msg.sender, msg.value);
        if(collected_eth >= 3 * 1 ether){
            uint256 thirty_value = msg.value * 3 /10;
            thirty_wallet.transfer(thirty_value);
            primary_wallet.transfer(msg.value - thirty_value);
        } else if(msg.value + collected_eth > 3){
            uint256 direct_transfer = (3 * 1 ether) - collected_eth;
            uint256 part_thirty_value = (msg.value - direct_transfer) * 3 / 10;
            thirty_wallet.transfer(part_thirty_value);
            primary_wallet.transfer(msg.value - part_thirty_value);
        } else {
            primary_wallet.transfer(msg.value);
        }
        collected_eth += msg.value;
    }
}
