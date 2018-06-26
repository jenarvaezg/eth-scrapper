
//Address: 0x7326cDc1308541a97A18D6c98DF142b98AdC26f3
//Contract name: TokenRate
//Balance: 0 Ether
//Verification Date: 11/28/2017
//Transacion Count: 187

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract TokenRate {
    uint public USDValue;
    uint public EURValue;
    uint public GBPValue;
    uint public BTCValue;
    address public owner = msg.sender;

    modifier ownerOnly() {
        require(msg.sender == owner);
        _;
    }

    function setValues(uint USD, uint EUR, uint GBP, uint BTC) ownerOnly public {
        USDValue = USD;
        EURValue = EUR;
        GBPValue = GBP;
        BTCValue = BTC;
    }
}
