
//Address: 0x906D0C7d0e5784e7ba91b87F7c4012C5b146EC50
//Contract name: TimeStampingAuthority
//Balance: 0 Ether
//Verification Date: 1/9/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract TimeStampingAuthority {
    
    struct Entry {
        address sender;
        uint timestamp;
        string note;
    }

    mapping(bytes => Entry) entries;
    
    function submitEntry(bytes _hash, string note) public {
        require(entries[_hash].timestamp == 0);
        entries[_hash] = Entry(msg.sender, now, note);
    }
    
    function getEntry(bytes _hash) public constant returns (address, uint, string) {
        return (entries[_hash].sender, entries[_hash].timestamp, entries[_hash].note);
    }
}
