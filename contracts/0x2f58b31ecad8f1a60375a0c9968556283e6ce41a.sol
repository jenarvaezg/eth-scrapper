
//Address: 0x2f58b31ecad8f1a60375a0c9968556283e6ce41a
//Contract name: Gamble
//Balance: 0 Ether
//Verification Date: 3/20/2018
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Owned {

  address owner;
  uint last_blocknumber;

  
  function Owned() public {
    owner = msg.sender;
  }
  
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function getBalance() public view returns (uint) {
    return address(this).balance;

  }

  function close() public onlyOwner {
    selfdestruct(msg.sender);
  }
}

contract Gamble is Owned {
  uint constant magic = 5;
  
  function getMaxBet() public view returns (uint) {
    return getBalance()/magic;
  }
  
  function Play() public payable protect protect_mining {
    require(msg.value <= getMaxBet());
    if (now % magic != 0) {
      msg.sender.transfer(msg.value + msg.value/magic);
    }
    last_blocknumber = block.number;
  }

  modifier protect {
    require(tx.origin == msg.sender);
    _;
  }

  modifier protect_mining {
    //very simple protection against miners
    require (block.number != last_blocknumber);
    _;
  }

  function () public payable {
    Play();
  }
}
