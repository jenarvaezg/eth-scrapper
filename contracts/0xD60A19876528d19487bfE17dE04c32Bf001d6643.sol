
//Address: 0xD60A19876528d19487bfE17dE04c32Bf001d6643
//Contract name: UserName
//Balance: 0 Ether
//Verification Date: 3/28/2018
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract UserName {

  mapping (address => mapping (uint => string)) public userDict;

  event OnNameChanged(uint indexed _guid, address indexed _who, string _newName);

  function changeName(uint _guid, string _newName) public {
    userDict[msg.sender][_guid] = _newName;
    OnNameChanged(_guid, msg.sender, _newName);
  }

  function nameOf(uint _guid, address _who) view public returns (string) {
    return userDict[_who][_guid];
  }
}
