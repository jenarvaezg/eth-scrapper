
//Address: 0xd6e8b5746f543712514d56d1ea9e2a8ba5b5e8d3
//Contract name: TokenPoolList
//Balance: 0 Ether
//Verification Date: 6/11/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract TokenPoolList {
  address[] public list;

  event Added(address x);

  function add(address x) {
    list.push(x);
    Added(x);
  }

  function getCount() public constant returns(uint) {
    return list.length;
  }

  function getAddress(uint index) public constant returns(address) {
    return list[index];
  }
}
