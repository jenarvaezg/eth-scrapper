
//Address: 0x5485c751c582eaf9e8d0ec47d754ee66a2e6e9eb
//Contract name: Test
//Balance: 0 Ether
//Verification Date: 2/9/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract Test {

    function send(address to) public{
        if (to.call("0xabcdef")) {
            return;
        } else {
            revert();
        }
    }
}
