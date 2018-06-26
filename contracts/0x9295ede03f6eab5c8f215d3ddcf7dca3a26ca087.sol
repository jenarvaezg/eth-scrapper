
//Address: 0x9295ede03f6eab5c8f215d3ddcf7dca3a26ca087
//Contract name: SimpleStorage
//Balance: 0 Ether
//Verification Date: 5/23/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint storedData) {
        return storedData;
    }
}
