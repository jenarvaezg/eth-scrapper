
//Address: 0x817c40120138bcba85c16e8e53d17dbff0ac8998
//Contract name: showNum
//Balance: 0 Ether
//Verification Date: 5/22/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity  0.4.24;


contract showNum {
    address owner = msg.sender;
    uint _num = 0;
    constructor(uint number) public {
        _num = number;
    }
    function setNum(uint number) public payable {
        _num = number;
    }
    function getNum() constant public returns(uint) {
        return _num;
    }
}
