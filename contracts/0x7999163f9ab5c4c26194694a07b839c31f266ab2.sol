
//Address: 0x7999163f9ab5c4c26194694a07b839c31f266ab2
//Contract name: Utils
//Balance: 0 Ether
//Verification Date: 5/7/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract Utils {
    function currentTime() public view returns (uint256){
        return uint256(now);
    }
}
