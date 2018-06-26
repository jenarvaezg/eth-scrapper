
//Address: 0xD934eE44c22fE8cF0f43bf66620b3001D9172904
//Contract name: ContractPlay
//Balance: 0.00500004 Ether
//Verification Date: 10/19/2016
//Transacion Count: 8

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract ContractPlay {
    address owner;
    uint16 numCalled;
    
    modifier onlyOwner {
        if (msg.sender != owner) {
            throw;
        }
        _;
    }
    
    function ContractPlay() {
        owner = msg.sender;
    }
    
    function remove() onlyOwner {
        selfdestruct(owner);
    }
    
    function addFunds() payable {
        numCalled++;
    }
    
    function getNumCalled() returns (uint16) {
        return numCalled;
    }
    
    function() {
        throw;
    }
}
