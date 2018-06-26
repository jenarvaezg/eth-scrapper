
//Address: 0x5e58c1e8ffe57a86098e66ee6a1764e41ebf2c4d
//Contract name: GIFT_CARD
//Balance: 0 Ether
//Verification Date: 6/9/2018
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract GIFT_CARD
{
    function Put(bytes32 _hash, uint _unlockTime)
    public
    payable
    {
        if(this.balance==0 || msg.value > 100000000000000000)// 0.1 ETH
        {
            unlockTime = now+_unlockTime;
            hashPass = _hash;
        }
    }
    
    function Take(bytes _pass)
    external
    payable
    {
        if(hashPass == keccak256(_pass) && now>unlockTime && msg.sender==tx.origin)
        {
            msg.sender.transfer(this.balance);
        }
    }
    
    bytes32 public hashPass;
    uint public unlockTime;
    
    function GetHash(bytes pass) public constant returns (bytes32) {return keccak256(pass);}
    
    function() public payable{}
}
