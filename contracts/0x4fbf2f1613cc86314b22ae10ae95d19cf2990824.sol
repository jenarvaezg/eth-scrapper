
//Address: 0x4fbf2f1613cc86314b22ae10ae95d19cf2990824
//Contract name: EthAvatar
//Balance: 0 Ether
//Verification Date: 3/9/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract EthAvatar {
    mapping (address => string) private ipfsHashes;

    event DidSetIPFSHash(address indexed hashAddress, string hash);


    function setIPFSHash(string hash) public {
        ipfsHashes[msg.sender] = hash;

        DidSetIPFSHash(msg.sender, hash);
    }

    function getIPFSHash() public view returns (string) {
        return ipfsHashes[msg.sender];
    }
}
