
//Address: 0x3d42f7eb6b97ab66d8d44c725651befe02a70e5e
//Contract name: AddressNames
//Balance: 0 Ether
//Verification Date: 12/31/2016
//Transacion Count: 334

// CODE STARTS HERE

pragma solidity 0.4.4;

contract AddressNames{

	mapping(address => string) addressNames;

	function setName(string name){
		if(bytes(name).length >= 3){
			addressNames[msg.sender] = name;
		}
	}

	function hasName(address who) constant returns (bool hasAName){
		hasAName = bytes(addressNames[who]).length != 0;
	}

	function getName(address who) constant returns (string name){
		name = addressNames[who];
	}
}
