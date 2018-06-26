
//Address: 0x5d5194e9aa451d36ec4faa62609d18e1ed6765a4
//Contract name: EthAvatar
//Balance: 0 Ether
//Verification Date: 3/9/2018
//Transacion Count: 21

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract EthAvatar {
    mapping (address => string) private ipfsHashes;

    event DidSetIPFSHash(address indexed hashAddress, string hash);


    function setIPFSHash(string hash) public {
        ipfsHashes[msg.sender] = hash;

        DidSetIPFSHash(msg.sender, hash);
    }

    function getIPFSHash(address hashAddress) public view returns (string) {
        return ipfsHashes[hashAddress];
    }
}
