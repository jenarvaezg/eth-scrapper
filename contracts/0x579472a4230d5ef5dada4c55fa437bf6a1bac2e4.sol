
//Address: 0x579472a4230d5ef5dada4c55fa437bf6a1bac2e4
//Contract name: Vault
//Balance: 0 Ether
//Verification Date: 2/4/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract Token {
    function balanceOf(address) public constant returns (uint);
    function transfer(address, uint) public returns (bool);
}

contract Vault {
    Token constant public token = Token(0xa645264C5603E96c3b0B078cdab68733794B0A71);
    address constant public recipient = 0x002AE208AD6064F75Fa78e7bbeF9B12DB850f559;
    // UNIX timestamp
    uint constant public unlockedAt = 1517760000;
    
    function unlock() public {
        require(now > unlockedAt);
        uint vaultBalance = token.balanceOf(address(this));
        token.transfer(recipient, vaultBalance);
    }
}
