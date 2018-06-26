
//Address: 0x6c5208924c5b302f756a79776a8b2918a041ad4d
//Contract name: Airdropper
//Balance: 0 Ether
//Verification Date: 9/20/2017
//Transacion Count: 218

// CODE STARTS HERE

pragma solidity ^0.4.11;

/**
 * Token BRAT. Dividends, remuneration, bounty, rewards - are sent continuously, all who have the token BRAT in wallet.
 * Token BRAT (BRAT - translated into English as BROTHER) is the story of each brother in cryptohistory.
 * Each brother should be BRAT.
 * BRAT is the creator of the BRO-Consortium.io
 */
contract Ownable {
  address public owner;

  function Ownable() {
    owner = msg.sender;
  }
 
  modifier onlyOwner() {
    if (msg.sender != owner) {
      revert();
    }
    _;
  }
 
  function transferOwnership(address newOwner) onlyOwner {
    if (newOwner != address(0)) {
      owner = newOwner;
    }
  }

}

contract ERC20Basic {
  uint public totalSupply;
  function balanceOf(address who) constant returns (uint);
  function transfer(address to, uint value);
  event Transfer(address indexed from, address indexed to, uint value);
}
 
contract ERC20 is ERC20Basic {
  function allowance(address owner, address spender) constant returns (uint);
  function transferFrom(address from, address to, uint value);
  function approve(address spender, uint value);
  event Approval(address indexed owner, address indexed spender, uint value);
}

contract Airdropper is Ownable {

    function multisend(address _tokenAddr, address[] dests, uint256[] values)
    onlyOwner
    returns (uint256) {
        uint256 i = 0;
        while (i < dests.length) {
           ERC20(_tokenAddr).transfer(dests[i], values[i]);
           i += 1;
        }
        return(i);
    }
}
