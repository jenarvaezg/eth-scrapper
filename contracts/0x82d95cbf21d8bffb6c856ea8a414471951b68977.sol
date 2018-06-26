
//Address: 0x82d95cbf21d8bffb6c856ea8a414471951b68977
//Contract name: TimestampService
//Balance: 0 Ether
//Verification Date: 3/26/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract TimestampService {

    struct Timestamp {
        uint    timestamp;
        address sender;
    }
    mapping(bytes32 => Timestamp) public timestamps;

    function timestamp(bytes32 hash) public returns (bool) {
        if (timestamps[hash].timestamp != 0) {
            return false;
        }
        timestamps[hash].timestamp = block.timestamp;
        timestamps[hash].sender = msg.sender;
        return true;
    }
    function getTimestamp(bytes32 hash) public constant returns (uint) {
        return timestamps[hash].timestamp;
    }
    function getSender(bytes32 hash) public constant returns (address) {
        return timestamps[hash].sender;
    }

}
