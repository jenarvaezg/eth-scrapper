
//Address: 0xd4e0477de9c484cdb6c5b075477d40e60a90a713
//Contract name: Verifier
//Balance: 0 Ether
//Verification Date: 5/15/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Verifier {
    function recoverAddr(bytes32 msgHash, uint8 v, bytes32 r, bytes32 s) public pure returns (address msgAddress) {
        return ecrecover(msgHash, v, r, s);
    }
    
    function isSigned(address _addr, bytes32 msgHash, uint8 v, bytes32 r, bytes32 s) public pure returns (bool msgSigned) {
        return ecrecover(msgHash, v, r, s) == _addr;
    }
}
