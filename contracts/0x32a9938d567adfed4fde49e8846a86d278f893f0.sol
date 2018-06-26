
//Address: 0x32a9938d567adfed4fde49e8846a86d278f893f0
//Contract name: mainTokenLock
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
 contract mainTokenLock is Ownable {
    
  token public tokenLocked;
  
  function retrieveTokens(uint _value) onlyOwner {
    require(_value > 0);
    if (now <= 1537876800)
    revert();
	tokenLocked = token(0xC2eAF62D3DB7c960d8Bb5D2D6a800Dd817C8E596);
    tokenLocked.transfer(owner, _value);
  }
}
