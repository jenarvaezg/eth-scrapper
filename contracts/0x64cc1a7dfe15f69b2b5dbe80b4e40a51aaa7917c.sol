
//Address: 0x64cc1a7dfe15f69b2b5dbe80b4e40a51aaa7917c
//Contract name: Auction
//Balance: 0 Ether
//Verification Date: 4/15/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Auction {
    uint bidDivisor = 100;
    uint duration = 20 minutes;

    address owner;
    uint public prize;

    uint public bids;
    address public leader;
    uint public deadline;
    bool public claimed;

    function Auction() public payable {
        owner = msg.sender;
        prize = msg.value;
        bids = 0;
        leader = msg.sender;
        deadline = now + duration;
        claimed = false;
    }

    function getNextBid() public view returns (uint) {
        return (bids + 1) * prize / bidDivisor;
    }

    function bid() public payable {
        require(now <= deadline);
        require(msg.value == getNextBid());
        owner.transfer(msg.value);
        bids++;
        leader = msg.sender;
        deadline = now + duration;
    }

    function claim() public {
        require(now > deadline);
        require(msg.sender == leader);
        require(!claimed);
        claimed = true;
        msg.sender.transfer(prize);
    }
}
