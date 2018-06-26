
//Address: 0xc3a57bfa038765db73b935b621213cf3b1a7f996
//Contract name: MyMap
//Balance: 0 Ether
//Verification Date: 12/21/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract MyMap {
    address public owner;
    mapping(bytes32=>bytes15) map;

    function MyMap() public {
        owner = msg.sender;
    }
    
    function setValue(bytes32 a, bytes15 b) public {
        if(owner == msg.sender) {
            map[a] = b;
        }
    }
}
