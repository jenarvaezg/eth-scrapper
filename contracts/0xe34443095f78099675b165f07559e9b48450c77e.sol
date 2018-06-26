
//Address: 0xe34443095f78099675b165f07559e9b48450c77e
//Contract name: Depay
//Balance: 0.00003 Ether
//Verification Date: 1/23/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.18;


contract Depay {

    address public developer;
    uint public donations;

    function Depay() public {
        developer = msg.sender;
    }

    event Payment(address indexed sender, address indexed receiver, uint indexed amount, uint donation);
    function pay(address recipient, uint donation) public payable {
        require(donation < msg.value);
        recipient.transfer(msg.value - donation);
        donations += donation;
        Payment(msg.sender, recipient, msg.value - donation, donation);
    }

    function withdrawDonations(address recipient) public {
        require(msg.sender == developer);
        recipient.transfer(donations);
        donations = 0;
    }
}
