
//Address: 0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a
//Contract name: R256
//Balance: 0 Ether
//Verification Date: 6/10/2018
//Transacion Count: 9

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract R256 {

    mapping(uint => uint) public record;

    event R(uint z);

    constructor() public {}

    function addRecord(uint z) public {
        require(record[z] == 0);
        record[z] = now;
        emit R(z);
    }

    function addMultipleRecords(uint[] zz) public {
        for (uint i; i < zz.length; i++) {
            addRecord(zz[i]);
        }
    }

}
