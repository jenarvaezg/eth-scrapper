
//Address: 0xca37f59c2626377d6492f30d5642110ba0485d58
//Contract name: HashMap
//Balance: 0 Ether
//Verification Date: 8/8/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity 0.4.8;

contract HashMap {
    mapping(bytes32 => bytes) map;
    
    function set(bytes _data) public {
        map[keccak256(_data)] = _data;
    }
    
    function get(bytes32 _hash) public constant returns (bytes data) {
        return map[_hash];
    }
}
