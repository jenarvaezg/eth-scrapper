
//Address: 0x2fd25efb3e998e0809646cf933a9df82219b582c
//Contract name: NHGame
//Balance: 0 Ether
//Verification Date: 3/3/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract NHGame{
	uint curMax=0;
	address argCurMax = msg.sender;
	uint solveTime=2**256-1;
	address public owner = msg.sender;
	uint stake=0;
	uint numberOfGames=0;
	    
	function setNewValue() public payable{
		require (msg.value > curMax);
		require (block.number<solveTime);
		curMax=msg.value;
		stake+=msg.value;
		argCurMax=msg.sender;
		solveTime=block.number+40320;
	}
    
	function withdraw() public{
		if ((msg.sender == owner)&&(curMax>0)&&(block.number>solveTime)){
			uint tosend=stake*95/100;
			uint tokeep=this.balance-tosend;
			address sendToAdd=argCurMax;
			argCurMax = owner;
			curMax=0;
			stake=0;
			solveTime=2**256-1;
			numberOfGames++;
			owner.transfer(tokeep);
			sendToAdd.transfer(tosend);
		}
	}
}
