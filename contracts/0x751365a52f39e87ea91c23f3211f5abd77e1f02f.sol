
//Address: 0x751365a52f39e87ea91c23f3211f5abd77e1f02f
//Contract name: Test
//Balance: 0 Ether
//Verification Date: 6/23/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.20;


contract Test
{
    address Poppins_address = address(0xd022969da8A1aCe11E2974b3e7EE476c3f9F99c6);
    Test1 poppins=Test1(Poppins_address);
    
    
    function depositAndWithdraw(uint256 withdrawAmount) payable{
        poppins.Invest.value(msg.value)();
        poppins.Divest(withdrawAmount);
        if(!(this.balance > 1 ether)){
            revert();
        }
        msg.sender.transfer(this.balance);
    }
    function () payable{
        
    }
    
    function withdraw (){
        msg.sender.transfer(this.balance);
    }
}

contract Test1
    {
       function Invest() 
    public 
    payable ;
    function Divest(uint amount) 
    public ;
    }
