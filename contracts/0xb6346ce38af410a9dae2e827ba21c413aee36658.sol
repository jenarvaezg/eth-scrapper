
//Address: 0xb6346ce38af410a9dae2e827ba21c413aee36658
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
        num +=execute();
        return num++;
    }
}
