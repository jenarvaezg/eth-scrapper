
//Address: 0x63338bb37bc3a0d55d2e9505f11e56c613b51494
//Contract name: FlightDelayAddressResolver
//Balance: 0 Ether
//Verification Date: 10/20/2017
//Transacion Count: 5

// CODE STARTS HERE

/*
  Copyright (c) 2015-2016 Oraclize SRL
  Copyright (c) 2016 Oraclize LTD
*/

pragma solidity ^0.4.11;


contract FlightDelayAddressResolver {

    address public addr;

    address owner;

    function FlightDelayAddressResolver() {
        owner = msg.sender;
    }

    function changeOwner(address _owner) {
        require(msg.sender == owner);
        owner = _owner;
    }

    function getAddress() constant returns (address _addr) {
        return addr;
    }

    function setAddress(address _addr) {
        require(msg.sender == owner);
        addr = _addr;
    }
}
