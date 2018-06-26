
//Address: 0x1622aafed9a6f0b59ef50a778bcb0cdbf990bf81
//Contract name: Foo
//Balance: 0 Ether
//Verification Date: 3/13/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract Foo
{
    string public phrase;
    
    function Foo(string _phrase) public {
        phrase = _phrase;
    }
}
