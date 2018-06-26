
//Address: 0xf0ec09b983766d419c813da55b110d8d7fb28de0
//Contract name: showNum
//Balance: 0 Ether
//Verification Date: 5/22/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.4;


contract showNum {
    address owner = msg.sender;

    uint _num = 0;
   function setNum(uint number) public payable {
        _num = number;
    }

    function getNum() constant public returns(uint) {
        return _num;
    }
}
