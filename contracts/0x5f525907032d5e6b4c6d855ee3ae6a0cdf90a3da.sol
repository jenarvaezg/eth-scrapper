
//Address: 0x5f525907032d5e6b4c6d855ee3ae6a0cdf90a3da
//Contract name: minishop
//Balance: 0 Ether
//Verification Date: 3/9/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract minishop{
    
    event Buy(address indexed producer, bytes32 indexed productHash, address indexed buyer);
    
    function buy(address _producer, bytes32 _productHash) public
    {
        emit Buy(_producer, _productHash, msg.sender);
    }
    
}
