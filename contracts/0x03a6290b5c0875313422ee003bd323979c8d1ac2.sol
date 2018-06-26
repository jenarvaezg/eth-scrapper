
//Address: 0x03a6290b5c0875313422ee003bd323979c8d1ac2
//Contract name: EscrowExchange
//Balance: 0 Ether
//Verification Date: 7/7/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;
contract Token {
    function transferFrom(address, address, uint256) returns (bool);
}
contract EscrowExchange {
    struct courseAndAddress {
        uint course;
        address tokenContractAddress;
    }
    mapping(address=>courseAndAddress) public tokenSellData;
    function setTokenForSale(uint course, address tokenContractAddress) {
        tokenSellData[msg.sender].course = course;        
        tokenSellData[msg.sender].tokenContractAddress = tokenContractAddress;
    }
    function buyToken(address sellerAddress) payable returns(bool) {
        require(msg.value>0);
        Token token = Token(tokenSellData[sellerAddress].tokenContractAddress);
        var tokens = msg.value/tokenSellData[sellerAddress].course;
        require(tokens>0);
        bool success = false;
        if(token.transferFrom(sellerAddress, msg.sender, tokens)) {
            sellerAddress.transfer(msg.value);
            success = true;
        }
        return success;
    }
}
