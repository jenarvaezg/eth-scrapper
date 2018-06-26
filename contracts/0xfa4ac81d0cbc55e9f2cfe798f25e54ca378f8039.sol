
//Address: 0xfa4ac81d0cbc55e9f2cfe798f25e54ca378f8039
//Contract name: Escrow
//Balance: 0.002979309924106847 Ether
//Verification Date: 5/31/2018
//Transacion Count: 15

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract Escrow {
  address public owner;
  uint public fee;
  mapping (address =>  mapping (address => uint)) public balances;

  function Escrow() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function setFee(uint price) onlyOwner external {
    fee = price;
  }

  function start(address payee) payable external {
    balances[msg.sender][payee] = balances[msg.sender][payee] + msg.value;
  }

  function end(address payer, address payee) onlyOwner external returns(bool){
    uint value = balances[payer][payee];
    uint paidFee = value / (1000000 / fee);
    uint payment = value - paidFee;
    balances[payer][payee] = 0;
    payee.transfer(payment);
    owner.transfer(paidFee);
    return true;
  }
  
  function refund(address payer, address payee) onlyOwner external returns(bool){
    uint value = balances[payer][payee];
    balances[payer][payee] = 0;
    payer.transfer(value);
    return true;
  }
}
