
//Address: 0x2262776164585b8de3a5f581caea9e1464b08653
//Contract name: FunGame
//Balance: 0 Ether
//Verification Date: 4/21/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract FunGame 
{
    address owner;
    struct user
    {
        address parent;
        uint8 level;
    }
    mapping(address=>user) public map;
    function FunGame()
    {
        owner = msg.sender;
        map[msg.sender].level = 8; 
    }
}
