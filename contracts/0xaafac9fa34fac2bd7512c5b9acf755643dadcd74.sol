
//Address: 0xaafac9fa34fac2bd7512c5b9acf755643dadcd74
//Contract name: whoSays
//Balance: 0 Ether
//Verification Date: 10/19/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract whoSays {

    string public name = "whoSays";

    mapping(address => bytes) data;

    event Said(address indexed person, bytes message);

    function saySomething(bytes _data) public {
        data[msg.sender] = _data;
        Said(msg.sender, _data);
    }
    
}
