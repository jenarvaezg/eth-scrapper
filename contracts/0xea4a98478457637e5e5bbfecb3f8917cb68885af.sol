
//Address: 0xea4a98478457637e5e5bbfecb3f8917cb68885af
//Contract name: DiscordLink
//Balance: 0 Ether
//Verification Date: 9/2/2017
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract DiscordLink {
    mapping (bytes => address) private linkage;
    
    function setLink(bytes didHash) {
        require(linkage[didHash] == 0x0);
        linkage[didHash] = msg.sender;
    }
    
    function changeLink(bytes didHash, address newAddress) {
        require(linkage[didHash] == msg.sender);
        linkage[didHash] = newAddress;
    }
    
    function getOwner(bytes didHash) constant returns(address) {
        return linkage[didHash];
    }
}
