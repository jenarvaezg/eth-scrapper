
//Address: 0xbf614eaf32e40581455242579b8e20d03551212f
//Contract name: CoinbaseFundsForwarding
//Balance: 0 Ether
//Verification Date: 11/27/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract CoinbaseFundsForwarding
{
	address public coinbaseWallet = 0x919C812f1a0f2eA5a2c8724C910eC0B61F020Ff0;

	function () payable {
		coinbaseWallet.transfer(msg.value);
	}
}
