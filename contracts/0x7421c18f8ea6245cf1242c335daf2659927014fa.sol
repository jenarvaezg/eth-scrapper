
//Address: 0x7421c18f8ea6245cf1242c335daf2659927014fa
//Contract name: PingContract
//Balance: 0 Ether
//Verification Date: 5/31/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract PingContract {
	function ping() returns (uint) {
		return pingTimestamp();
	}
	
	function pingTimestamp() returns (uint) {
		return block.timestamp;
	}
	
	function pingBlock() returns (uint) {
		return block.number;
	}
}
