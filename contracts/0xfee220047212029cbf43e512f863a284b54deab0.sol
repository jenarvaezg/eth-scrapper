
//Address: 0xfee220047212029cbf43e512f863a284b54deab0
//Contract name: greeter
//Balance: 0 Ether
//Verification Date: 3/19/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract greeter {

    address owner;
    string message;

    function greeter(string _message) public {
        owner = msg.sender;
        message = _message;
    }

    function say() constant returns (string) {
        return message;
    }

    function die() {
        if (msg.sender == owner) {
            selfdestruct(owner);
        }
    }
}
