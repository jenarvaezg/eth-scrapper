
//Address: 0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3
//Contract name: R256Basic
//Balance: 0 Ether
//Verification Date: 6/10/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract R256Basic {

    event R(uint z);

    constructor() public {}

    function addRecord(uint z) public {
        emit R(z);
    }

    function addMultipleRecords(uint[] zz) public {
        for (uint i; i < zz.length; i++) {
            emit R(zz[i]);
        }
    }

}
