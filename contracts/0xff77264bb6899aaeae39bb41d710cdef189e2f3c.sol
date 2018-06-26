
//Address: 0xff77264bb6899aaeae39bb41d710cdef189e2f3c
//Contract name: ComplianceService
//Balance: 0 Ether
//Verification Date: 6/14/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.22;

contract ComplianceService {
	function validate(address _from, address _to, uint256 _amount) public returns (bool allowed) {
		return true;
	}
}
