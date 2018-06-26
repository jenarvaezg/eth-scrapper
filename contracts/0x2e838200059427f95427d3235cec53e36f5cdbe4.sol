
//Address: 0x2e838200059427f95427d3235cec53e36f5cdbe4
//Contract name: ConvertLib
//Balance: 0 Ether
//Verification Date: 6/23/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.17;

library ConvertLib {
    function convert(uint amount,uint conversionRate) public pure returns (uint convertedAmount) {
        return amount * conversionRate;
    }
}
