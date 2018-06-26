
//Address: 0x3cd0c444137bac6996f262f92d1b79d6e8ad85b8
//Contract name: Distributor
//Balance: 0 Ether
//Verification Date: 9/28/2017
//Transacion Count: 11

// CODE STARTS HERE

pragma solidity ^0.4.17;

contract Distributor
{
    address owner = msg.sender;
    address newOwner = msg.sender;
    
    function ChangeOwner(address _newOwner)
    public
    {
        require(msg.sender == owner);
        newOwner = _newOwner;
    }
    
    function ConfirmOwner()
    public
    {
        require(newOwner==msg.sender);
        owner=newOwner;
    }
    
    function Withdrawal()
    public
    payable
    {
        owner.transfer(this.balance);
    }
    
    function Send(address[] addr, uint[] val)
    public
    payable
    {
        require(val.length==addr.length);
        uint total;
        for (uint j=0; j<val.length; j++)
        {
            require(addr[j]!=0x0);
            total+=val[j];
        }
        if(msg.value>=total)
        {
            for (uint i=0; i<addr.length; i++)
            {
                addr[i].transfer(val[i]);
            }
        }
    }
}
