
//Address: 0xc7b7c5e882e5e255414eb18be25c0ac7e70ff308
//Contract name: DocumentSigner
//Balance: 0 Ether
//Verification Date: 5/18/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.15;

contract DocumentSigner {
    mapping(string => address[]) signatureMap;
    
    function sign(string _documentHash) public {
        signatureMap[_documentHash].push(msg.sender);
    }

    function getSignatureAtIndex(string _documentHash, uint _index) public constant returns (address) {
    	return signatureMap[_documentHash][_index];
    }

    function getSignatures(string _documentHash) public constant returns (address[]) {
    	return signatureMap[_documentHash];
    }
}
