
//Address: 0x1c61d42efafe3c627998f2d53d897dbfd99d7ff9
//Contract name: Nicks
//Balance: 0 Ether
//Verification Date: 2/1/2018
//Transacion Count: 995

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract Nicks {
  mapping (address => string) private nickOfOwner;
  mapping (string => address) private ownerOfNick;

  event Set (string indexed _nick, address indexed _owner);
  event Unset (string indexed _nick, address indexed _owner);

  function Nicks () public {
  }

  function nickOf (address _owner) public view returns (string _nick) {
    return nickOfOwner[_owner];
  }

  function ownerOf (string _nick) public view returns (address _owner) {
    return ownerOfNick[_nick];
  }

  function set (string _nick) public {
    require(bytes(_nick).length > 2);
    require(ownerOf(_nick) == address(0));

    address owner = msg.sender;
    string storage oldNick = nickOfOwner[owner];

    if (bytes(oldNick).length > 0) {
      Unset(oldNick, owner);
      delete ownerOfNick[oldNick];
    }

    nickOfOwner[owner] = _nick;
    ownerOfNick[_nick] = owner;
    Set(_nick, owner);
  }

  function unset () public {
    require(bytes(nickOfOwner[msg.sender]).length > 0);

    address owner = msg.sender;
    string storage oldNick = nickOfOwner[owner];

    Unset(oldNick, owner);

    delete ownerOfNick[oldNick];
    delete nickOfOwner[owner];
  }
}
