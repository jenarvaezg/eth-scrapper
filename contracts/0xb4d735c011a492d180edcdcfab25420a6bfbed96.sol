
//Address: 0xb4d735c011a492d180edcdcfab25420a6bfbed96
//Contract name: passOnContract
//Balance: 0 Ether
//Verification Date: 4/2/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.21;

  contract MBLToken {
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
    function balanceOf(address _tokenOwner) external view returns (uint balance);

 }

   contract passOnContract {

    address public owner;
  	address public tokenAddress = 0x8D7dDaD45789a64c2AF9b4Ce031C774e277F1Cd4;

  	function passOnContract() public {

  		owner = msg.sender;
  	}

    function () public payable {

    	owner.transfer(msg.value);
    	MBLToken mblToken = MBLToken(tokenAddress);
    	mblToken.transferFrom(owner, msg.sender, msg.value/250000000000000);

    }

}
