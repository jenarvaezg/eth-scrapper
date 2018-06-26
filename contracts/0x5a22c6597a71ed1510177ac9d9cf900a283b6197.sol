
//Address: 0x5a22c6597a71ed1510177ac9d9cf900a283b6197
//Contract name: AndxorLogger
//Balance: 0 Ether
//Verification Date: 9/18/2017
//Transacion Count: 32

// CODE STARTS HERE

pragma solidity ^0.4.0;

/// @title Andxor hash logger
/// @author Andxor Soluzioni Informatiche srl <http://www.andxor.it/>
contract AndxorLogger {
    event LogHash(uint256 hash);

    function AndxorLogger() {
    }

    /// logs an hash value into the blockchain
    function logHash(uint256 value) {
        LogHash(value);
    }
}
