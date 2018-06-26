
//Address: 0x0cbe050f75bc8f8c2d6c0d249fea125fd6e1acc9
//Contract name: Caller
//Balance: 0 Ether
//Verification Date: 9/29/2017
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract Caller {
    function callAddress(address a) {
        a.call();
    }
}
