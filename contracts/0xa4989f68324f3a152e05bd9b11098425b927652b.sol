
//Address: 0xa4989f68324f3a152e05bd9b11098425b927652b
//Contract name: DEMS
//Balance: 0 Ether
//Verification Date: 5/17/2018
//Transacion Count: 45

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract DEMS {
    event SendMessage(bytes iv, bytes epk, bytes ct, bytes mac, address sender);
    
    function sendMessage(bytes iv, bytes epk, bytes ct, bytes mac) external {
        SendMessage(iv, epk, ct, mac, msg.sender);
    }
}
