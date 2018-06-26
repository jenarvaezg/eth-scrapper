
//Address: 0xadd553d102761875207c8bca3fd8f3d7d40df1dc
//Contract name: TimeLock
//Balance: 0.002 Ether
//Verification Date: 6/2/2017
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.9;

contract TimeLock {
    address user;
    uint balance;
    uint depositTime;
    function () payable {
      if (user!=0)
        throw;
      user = msg.sender;
      balance = msg.value;
      depositTime = block.timestamp;
    }
    function withdraw (){
        if (user==0){
            throw;
        }
        
        if (block.timestamp-depositTime<20*60){
            throw;
        }
        
        if(!user.send(balance))
            throw;
        
        delete user;
        
        
        
    }
}
