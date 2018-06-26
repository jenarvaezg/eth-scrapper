
//Address: 0x763465c2114e33886e1574e5994df1bb8cd5f160
//Contract name: Sylence
//Balance: 0 Ether
//Verification Date: 3/8/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.8;

contract Sylence {

  struct User {
    uint256 pubKeysCount;
    mapping(uint256 => string) pubKeys;
  }
  mapping(string => User) users;

  address owner;
  function Sylence() { owner = msg.sender; }

  function getPubKeyByHash(string phoneHash) constant returns (
    string pubKey,
    uint256 currentIndex
  ) {
    User u = users[phoneHash];
    currentIndex = u.pubKeysCount;
    pubKey = u.pubKeys[currentIndex];
  }

  function registerNewPubKeyForHash(string phoneHash, string pubKey) {
    if(msg.sender != owner) { throw; }
    users[phoneHash].pubKeys[++users[phoneHash].pubKeysCount] = pubKey;
  }

}
