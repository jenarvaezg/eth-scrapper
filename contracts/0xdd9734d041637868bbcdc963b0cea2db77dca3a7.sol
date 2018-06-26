
//Address: 0xdd9734d041637868bbcdc963b0cea2db77dca3a7
//Contract name: FunGame
//Balance: 0 Ether
//Verification Date: 4/20/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract FunGame 
{
    address owner;
    modifier OnlyOwner() 
    {
        if (msg.sender == owner) 
        _;
    }
    function FunGame()
    {
        owner = msg.sender;
    }
    function TakeMoney() OnlyOwner
    {
        owner.transfer(this.balance);
    }
    function ChangeOwner(address NewOwner) OnlyOwner 
    {
        owner = NewOwner;
    }
}
