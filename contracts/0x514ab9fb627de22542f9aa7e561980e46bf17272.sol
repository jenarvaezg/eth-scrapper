
//Address: 0x514ab9fb627de22542f9aa7e561980e46bf17272
//Contract name: wallet
//Balance: 0 Ether
//Verification Date: 6/5/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.8;

contract wallet {
    address owner;
    function wallet() {
        owner = msg.sender;
    }
    function transfer(address target) payable {
        target.send(msg.value);
    }
    function kill() {
        if (msg.sender == owner) {
            suicide(owner);
        } else {
            throw;
        }
    }
}
