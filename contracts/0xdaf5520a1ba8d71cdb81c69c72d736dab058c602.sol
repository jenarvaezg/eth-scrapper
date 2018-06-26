
//Address: 0xdaf5520a1ba8d71cdb81c69c72d736dab058c602
//Contract name: DPIcoWhitelist
//Balance: 0 Ether
//Verification Date: 9/16/2017
//Transacion Count: 5740

// CODE STARTS HERE

pragma solidity 0.4.15;

contract DPIcoWhitelist {
  address admin;
  bool isOn;
  mapping ( address => bool ) whitelist;
  address[] users;

  modifier signUpOpen() {
    if ( ! isOn ) revert();
    _;
  }

  modifier isAdmin() {
    if ( msg.sender != admin ) revert();
    _;
  }

  modifier newAddr() {
    if ( whitelist[msg.sender] ) revert();
    _;
  }

  function DPIcoWhitelist() {
    admin = msg.sender;
    isOn = false;
  }

  function getAdmin() constant returns (address) {
    return admin;
  }

  function signUpOn() constant returns (bool) {
    return isOn;
  }

  function setSignUpOnOff(bool state) public isAdmin {
    isOn = state;
  }

  function signUp() public signUpOpen newAddr {
    whitelist[msg.sender] = true;
    users.push(msg.sender);
  }

  function () {
    signUp();
  }

  function isSignedUp(address addr) constant returns (bool) {
    return whitelist[addr];
  }

  function getUsers() constant returns (address[]) {
    return users;
  }

  function numUsers() constant returns (uint) {
    return users.length;
  }

  function userAtIndex(uint idx) constant returns (address) {
    return users[idx];
  }
}
