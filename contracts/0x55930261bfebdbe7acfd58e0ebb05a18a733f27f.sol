
//Address: 0x55930261bfebdbe7acfd58e0ebb05a18a733f27f
//Contract name: PureLoop
//Balance: 0 Ether
//Verification Date: 12/28/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract PureLoop
{
    function execute() public pure returns (uint output) {
        uint num;
        while(true) {
            num++;
        }
        return num;
    }
}
