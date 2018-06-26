
//Address: 0x70eb907cb2c51bda4e199f54d4c21b97676bb451
//Contract name: Agent
//Balance: 0 Ether
//Verification Date: 7/26/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract Agent {
    
    function g(address addr) payable {
        addr.transfer(msg.value);
    }

}
