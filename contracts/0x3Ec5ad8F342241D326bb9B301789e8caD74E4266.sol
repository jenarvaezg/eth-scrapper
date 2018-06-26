
//Address: 0x3Ec5ad8F342241D326bb9B301789e8caD74E4266
//Contract name: MainSale
//Balance: 0 Ether
//Verification Date: 5/14/2018
//Transacion Count: 121

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract MainSale {

	uint256 public totalContributed;
	uint256 public startTime;
	uint256 public endTime;
	uint256 public hardCap;
	address public owner;

	function MainSale (address _owner, uint256 _start, uint256 _end, uint256 _cap) public {
		owner = _owner;
		startTime = _start;
		endTime = _end;
		hardCap = _cap * (10 ** 18);
	}

	function () external payable {
		require(now >= startTime && now <= endTime);
		require(hardCap >= msg.value + totalContributed);
		require(msg.value >= 10 ** 17);
		totalContributed += msg.value;
	}

	modifier onlyOwner() {
		assert(msg.sender == owner);
		_;
	}

	function forwardFunds(address _to, uint256 _value) onlyOwner public returns (bool success) {
		require(_to != address(0));
		_to.transfer(_value);
		return true;
	}

}
