
//Address: 0xe9504a0f260b7be610bd49346e8c1f3d5aba4bf9
//Contract name: Incrementer
//Balance: 0 Ether
//Verification Date: 7/12/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract Incrementer {
    uint public i;
    function inc() {
        i++;
    }
}
