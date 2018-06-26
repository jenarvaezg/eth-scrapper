
//Address: 0x8f098c013158f9151a21e06a958cdd8756752696
//Contract name: TestSale
//Balance: 0 Ether
//Verification Date: 1/14/2018
//Transacion Count: 15

// CODE STARTS HERE

pragma solidity 0.4.18;

contract TestSale {

  address public owner;
  bool public active;
  mapping (address => uint256) public participation;

  modifier ownerOnly() {
    require(msg.sender == owner);
    _;
  }

  modifier isActive() {
    require(active);
    _;
  }

  function TestSale() public {
    owner = msg.sender;
    active = false;
  }

  function setActive(bool _active) public ownerOnly {
    active = _active;
  }

  function () external payable isActive {
    participate(msg.sender);
  }

  function participate(address _recipient) public payable isActive {
    participation[_recipient] = participation[_recipient] + msg.value;
    owner.transfer(msg.value);
  }

}
