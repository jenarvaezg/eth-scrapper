
//Address: 0xd6b003934a34bd643f3da07dd8e76e05247252e1
//Contract name: S9token
//Balance: 0 Ether
//Verification Date: 10/26/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.15;
contract S9token {
	
	address owner;
	string public name="S9token";
	uint8 public constant decimals = 0;
	string public constant version = "1";
	uint256 _totalSupply;
	mapping (address => uint256) public balances;

	function S9token() {
		owner=msg.sender;
		_totalSupply=200;
		balances[msg.sender]=200;
	}

	event Transfer( address indexed from, address indexed to, uint value);

	function totalSupply() public constant returns (uint supply){
		return _totalSupply;
	}

    function balanceOf(address _owner) constant returns(uint256 balanceof){
		return balances[_owner];
	}

    function transfer(address _to, uint256 _amount) returns (bool success){
    	require(msg.sender==owner);
		if (balances[msg.sender] >= _amount 
			&& _amount > 0 
			&& balances[_to] + _amount > balances[_to]){
			balances[msg.sender] -= _amount;
			balances[_to] += _amount;
			return true;
			Transfer(msg.sender,_to,_amount);
		}
		else{
			return false;
		}
	}
    

}
