
//Address: 0x4032a725b81cfd0cdb519933cc6084d9b22175c0
//Contract name: SimpleDistributor
//Balance: 0 Ether
//Verification Date: 1/10/2018
//Transacion Count: 48

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract ERC20Cutted {
    
  function balanceOf(address who) public constant returns (uint256);
  
  function transfer(address to, uint256 value) public returns (bool);
  
}


contract SimpleDistributor {
    
  address public owner;
    
  ERC20Cutted public token = ERC20Cutted(0xE2FB6529EF566a080e6d23dE0bd351311087D567);
    
  function SimpleDistributor() public {
    owner = msg.sender;
  }
   
  function addReceivers(address[] receivers, uint[] balances) public {
    require(msg.sender == owner);
    for(uint i = 0; i < receivers.length; i++) {
      token.transfer(receivers[i], balances[i]);
    }
  } 
  
  function retrieveCurrentTokensToOwner() public {
    retrieveTokens(owner, address(token));
  }

  function retrieveTokens(address to, address anotherToken) public {
    require(msg.sender == owner);
    ERC20Cutted alienToken = ERC20Cutted(anotherToken);
    alienToken.transfer(to, alienToken.balanceOf(this));
  }

}
