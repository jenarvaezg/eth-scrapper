
//Address: 0x71f2ea939984349838578fbd20fd25e649c1d6a3
//Contract name: RecoverEosKey
//Balance: 0 Ether
//Verification Date: 6/18/2018
//Transacion Count: 226

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract RecoverEosKey {
    
    mapping (address => string) public keys;
    
    event LogRegister (address user, string key);
    
    function register(string key) public {
        assert(bytes(key).length <= 64);
        keys[msg.sender] = key;
        emit LogRegister(msg.sender, key);
    }
}
