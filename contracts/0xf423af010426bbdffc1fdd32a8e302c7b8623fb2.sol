
//Address: 0xf423af010426bbdffc1fdd32a8e302c7b8623fb2
//Contract name: SimpleStorage
//Balance: 0 Ether
//Verification Date: 1/15/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public constant returns (uint) {
        return storedData;
    }
}
