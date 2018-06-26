
//Address: 0xb94c06b81d11bf68cbafe3694272bfc1d4edd9f1
//Contract name: TinyProxyFactory
//Balance: 0 Ether
//Verification Date: 4/4/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.17;

contract TinyProxy {
  address public receiver;
  uint public gasBudget;

  function TinyProxy(address toAddr, uint proxyGas) public {
    receiver = toAddr;
    gasBudget = proxyGas;
  }

  function () payable public { }

  event FundsReleased(address to, uint amount);

  function release() public {
    uint balance = address(this).balance;
    if(gasBudget > 0){
      require(receiver.call.gas(gasBudget).value(balance)());
    } else {
      require(receiver.send(balance));
    }
    FundsReleased(receiver, balance);
  }
}

contract TinyProxyFactory {
  mapping(address => mapping(address => address)) public proxyFor;
  mapping(address => address[]) public userProxies;

  function make(address to, uint gas, bool track) public returns(address proxy){
    proxy = new TinyProxy(to, gas);
    if(track) {
      proxyFor[msg.sender][to] = proxy;
      userProxies[msg.sender].push(proxy);
    }
    return proxy;
  }
}
