
//Address: 0xc333b0bc21A64A56aB7e59D77b486D4Ee41a50A2
//Contract name: AKValueTest
//Balance: 0 Ether
//Verification Date: 9/13/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract AKValueTest
{
    uint256 public someValue;
    
    function setSomeValue(uint256 newValue)
    {
        someValue = newValue;
    }
}
