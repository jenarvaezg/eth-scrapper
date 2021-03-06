
//Address: 0xc3142db870ce470122f7d2d4d8d76ae5dda51dda
//Contract name: FreedomEthereum
//Balance: 20 Ether
//Verification Date: 7/24/2017
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.11;
contract FreedomEthereum {
    event Hodl(address indexed hodler, uint indexed amount);
    event Party(address indexed hodler, uint indexed amount);
    mapping (address => uint) public hodlers;
    uint constant partyTime = 1554098401; //Morning April 1 2019
    function() payable {
        hodlers[msg.sender] += msg.value;
        Hodl(msg.sender, msg.value);
    }
    function party() {
        require (block.timestamp > partyTime && hodlers[msg.sender] > 0);
        uint value = hodlers[msg.sender];
        hodlers[msg.sender] = 0;
        msg.sender.transfer(value);
        Party(msg.sender, value);
    }
}
