
//Address: 0x8bd3eb9328d371ef2e4a4da1b0e879043f13612e
//Contract name: dappVolumeProfile
//Balance: 0 Ether
//Verification Date: 5/31/2018
//Transacion Count: 31

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract dappVolumeProfile {

	mapping (address => string) public ownerAddressToName;
	mapping (address => string) public ownerAddressToUrl;

	function setAccountNickname(string _nickname) public {
		require(msg.sender != address(0));
		require(bytes(_nickname).length > 0);
		ownerAddressToName[msg.sender] = _nickname;
	}

	function setAccountUrl(string _url) public {
		require(msg.sender != address(0));
		require(bytes(_url).length > 0);
		ownerAddressToUrl[msg.sender] = _url;
	}

}
