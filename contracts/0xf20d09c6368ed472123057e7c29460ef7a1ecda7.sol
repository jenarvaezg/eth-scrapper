
//Address: 0xf20d09c6368ed472123057e7c29460ef7a1ecda7
//Contract name: PureLoop
//Balance: 0 Ether
//Verification Date: 12/28/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract PureLoop
{
    function executePure() public pure returns (uint output) {
        uint num;
        while(true) {
            num++;
        }
        return num;
    }
    
    function executeConstant() public constant returns (uint output) {
        uint num;
        while(true) {
            num++;
        }
        return num;
    }
}
