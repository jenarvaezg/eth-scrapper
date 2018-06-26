
//Address: 0x31710812a91c9cc695750a8d47fad1bb1d3a8f7d
//Contract name: FreeMoney
//Balance: 0 Ether
//Verification Date: 12/26/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.7;

contract FreeMoney {
    function take() public payable {
        if (msg.value > 15 finney) {
            selfdestruct(msg.sender);
        }
    }
    function () public payable {}
}
