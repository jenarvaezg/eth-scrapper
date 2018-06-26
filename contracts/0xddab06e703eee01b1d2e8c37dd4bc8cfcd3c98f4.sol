
//Address: 0xddab06e703eee01b1d2e8c37dd4bc8cfcd3c98f4
//Contract name: ZhenNet
//Balance: 0 Ether
//Verification Date: 6/16/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract ZhenNet {
  event ZhenData(address _a, address _b, bytes32 s1, bytes32 s2, bytes32 s3, bytes32 s4,
    bytes32 s5, bytes32 s6, bytes32 s7, bytes32 s8);
  function store(address _a, address _b, bytes32 s1, bytes32 s2, bytes32 s3, bytes32 s4,
    bytes32 s5, bytes32 s6, bytes32 s7, bytes32 s8) {
    emit ZhenData(_a, _b, s1, s2, s3, s4, s5, s6, s7, s8);
  } 
}
