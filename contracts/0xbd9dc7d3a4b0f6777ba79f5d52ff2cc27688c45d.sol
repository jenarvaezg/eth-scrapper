
//Address: 0xbd9dc7d3a4b0f6777ba79f5d52ff2cc27688c45d
//Contract name: AnyChicken
//Balance: 0 Ether
//Verification Date: 12/15/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract AnyChicken {

    address public owner;
	address public bigChicken;
	uint public bigAmount;
	uint public lastBlock;
	
	function AnyChicken() public payable {
		owner = msg.sender;
		bigChicken = msg.sender;
		bigAmount = msg.value;
		lastBlock = block.number;
	}
	
	function () public payable {
		if (block.number <= lastBlock + 1000) {
			require(msg.value > bigAmount);
			bigChicken = msg.sender;
			bigAmount = msg.value;
			lastBlock = block.number;
			owner.transfer(msg.value/100);
		}
		else {
			require(msg.sender == bigChicken);
			bigChicken.transfer(this.balance);
		}
	}
}
