
//Address: 0x75051407bb4ce22d3e6c38748237a3554e93d328
//Contract name: Name
//Balance: 0 Ether
//Verification Date: 12/31/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.12;

// Reward Channel contract

contract Name{
    address public owner = msg.sender;
    string public name;

    modifier onlyBy(address _account) { require(msg.sender == _account); _; }


    function Name(string myName) public {
      name = myName;
    }

    function() payable public {}

    function withdraw() onlyBy(owner) public {
      owner.transfer(this.balance);
    }

    function destroy() onlyBy(owner) public{
      selfdestruct(this);
    }
}
