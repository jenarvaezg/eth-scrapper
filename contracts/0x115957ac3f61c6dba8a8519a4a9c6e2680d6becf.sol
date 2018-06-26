
//Address: 0x115957ac3f61c6dba8a8519a4a9c6e2680d6becf
//Contract name: teamTokenLock
//Balance: 0 Ether
//Verification Date: 2/25/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.20;

interface token {
    function transfer(address receiver, uint amount);
}

contract Ownable {
    
  address public owner;


  function Ownable() {
    owner = msg.sender;
  }


  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }


  function transferOwnership(address newOwner) onlyOwner {
    require(newOwner != address(0));      
    owner = newOwner;
  }

}
 contract teamTokenLock is Ownable {
    
  token public tokenLocked;
  
  function retrieveTokens(uint _value) onlyOwner {
    require(_value > 0);
    if (now <= 1543147200)
    revert();
	tokenLocked = token(0xC2eAF62D3DB7c960d8Bb5D2D6a800Dd817C8E596);
    tokenLocked.transfer(owner, _value);
  }
}
