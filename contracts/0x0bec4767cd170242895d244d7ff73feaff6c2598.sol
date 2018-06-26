
//Address: 0x0bec4767cd170242895d244d7ff73feaff6c2598
//Contract name: Numa
//Balance: 0 Ether
//Verification Date: 4/1/2018
//Transacion Count: 218

// CODE STARTS HERE

pragma solidity ^0.4.2;

contract Numa {

    event NewBatch(
        bytes32 indexed ipfsHash
    );

    function Numa() public { }
    
    function newBatch(bytes32 ipfsHash) public {
        NewBatch(ipfsHash);
    }
}
