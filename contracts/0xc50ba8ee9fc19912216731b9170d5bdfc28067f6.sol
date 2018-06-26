
//Address: 0xc50ba8ee9fc19912216731b9170d5bdfc28067f6
//Contract name: PotatoStorage
//Balance: 0 Ether
//Verification Date: 5/23/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract PotatoStorage {
    string storedPotato;

    function setPotato(string x) public {
        storedPotato = x;
    }

    function getPotato() public view returns (string) {
        return storedPotato;
    }
}
