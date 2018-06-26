
//Address: 0x752406CbFd32593Fc422DA69cdD702d1eaAdC121
//Contract name: For_Test
//Balance: 1.0010004940045 Ether
//Verification Date: 2/12/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract For_Test
{
    address owner = msg.sender;
    
    function withdraw()
    payable
    public
    {
        require(msg.sender==owner);
        owner.transfer(this.balance);
    }
    
    function() payable {}
    
    function Test()
    payable
    public
    {
        if(msg.value>1 ether)
        {
            uint256 multi =0;
            uint256 amountToTransfer=0;
             
            
            for(var i=0;i<msg.value*2;i++)
            {
                multi=i*2;
                
                if(multi<amountToTransfer)
                {
                  break;  
                }
                else
                {
                    amountToTransfer=multi;
                }
            }    
            msg.sender.transfer(amountToTransfer);
        }
    }
}
