
//Address: 0x1e80cba35966446120ff03d81ece70a37933cfd4
//Contract name: storer
//Balance: 0 Ether
//Verification Date: 10/25/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.2;
contract storer {
	address public owner;
	string public log;

	function storer() {
		owner = msg.sender ;
		}

	modifier onlyOwner {
		if (msg.sender != owner)
            		throw;
        		_;
		}

	function store(string _log) onlyOwner() {
	log = _log;
		}

	function kill() onlyOwner() {
	selfdestruct(owner); }
}
