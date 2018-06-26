
//Address: 0x674fc83f67B9668859A1d7882DFDbc384421C506
//Contract name: greeter
//Balance: 0 Ether
//Verification Date: 12/2/2017
//Transacion Count: 2

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
