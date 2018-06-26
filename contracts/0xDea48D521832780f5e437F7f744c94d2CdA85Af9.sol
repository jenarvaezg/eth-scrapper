
//Address: 0xDea48D521832780f5e437F7f744c94d2CdA85Af9
//Contract name: testingToken
//Balance: 0 Ether
//Verification Date: 1/16/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.8;

contract testingToken {
	mapping (address => uint256) public balanceOf;
	address public owner;
	function testingToken() {
		owner = msg.sender;
		balanceOf[msg.sender] = 1000;
	}
	function send(address _to, uint256 _value) {
		if (balanceOf[msg.sender]<_value) throw;
		if (balanceOf[_to]+_value<balanceOf[_to]) throw;
		if (_value<0) throw;
		balanceOf[msg.sender] -= _value;
		balanceOf[_to] += _value;
	}
}
