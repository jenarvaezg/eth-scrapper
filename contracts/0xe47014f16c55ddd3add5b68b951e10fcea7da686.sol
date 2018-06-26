
//Address: 0xe47014f16c55ddd3add5b68b951e10fcea7da686
//Contract name: BlocklabTokenV1
//Balance: 0 Ether
//Verification Date: 11/1/2016
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.2;

contract BlocklabTokenV1 {
	mapping (address => uint) balances;

	function BlocklabTokenV1() {
		balances[tx.origin] = 100000;
	}

	function sendCoin(address receiver, uint amount) returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		return true;
	}

	function getBalance(address addr) returns(uint) {
		return balances[addr];
	}

	function () { throw; }
}
