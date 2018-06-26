
//Address: 0x5a8bf35d54bf2e55b423d4c915bbb944d3848461
//Contract name: TradeIO
//Balance: 0 Ether
//Verification Date: 1/26/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract TradeIO {
    address owner;
    mapping(bytes8 => string) dateToHash;
    
    modifier onlyOwner () {
        require(owner == msg.sender);
        _;
    }
    
    function TradeIO () public {
        owner = msg.sender;
    }
    
    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
    
    function saveHash(bytes8 date, string hash) public onlyOwner {
        require(bytes(dateToHash[date]).length == 0);
        dateToHash[date] = hash;
    }
    
    function getHash(bytes8 date) public constant returns (string) {
        require(bytes(dateToHash[date]).length != 0);
        return dateToHash[date];
    }
}
