
//Address: 0x1ed3e252dcb6d540947d2d63a911f56733d55681
//Contract name: DogeEthBountySplit
//Balance: 2 wei
//Verification Date: 12/19/2017
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract DogeEthBountySplit {

    // Just hardcode externally owned accounts, don’t use contract addresses.
    address public oscarGuindzbergAddress = 0xFc7E364035f52ecA68D71dcfb63D1E3769413d69;
    address public coinfabrikAddress = 0x8ffC991Fc4C4fC53329Ad296C1aFe41470cFFbb3;
    address public truebitAddress = 0x1e6d05543EaD73fb1820FAdBa481aAd716845FBa;

    function() payable public {
    }    
   
    function withdraw() public {
        uint balance = this.balance;
        uint oneThird = balance / 3;
        oscarGuindzbergAddress.transfer(oneThird);
        coinfabrikAddress.transfer(oneThird);
        truebitAddress.transfer(oneThird);
    }
}
