
//Address: 0x53570f9db0d81af09d9ef418e37e025668eed05f
//Contract name: whoSays
//Balance: 0 Ether
//Verification Date: 10/19/2017
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract whoSays {

    string public name = "whoSays";

    mapping(address => bytes) public data;

    event Said(address indexed person, bytes message);

    function saySomething(bytes _data) public {
        data[msg.sender] = _data;
        Said(msg.sender, _data);
    }

}
