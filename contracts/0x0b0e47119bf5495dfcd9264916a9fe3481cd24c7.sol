
//Address: 0x0b0e47119bf5495dfcd9264916a9fe3481cd24c7
//Contract name: ForkChecker
//Balance: 0 Ether
//Verification Date: 9/10/2016
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract ForkChecker {
  bool public isFork;
  uint256 public bnCheck;
  bytes32 public bhCheck;

  function ForkChecker(uint256 _blockNumber, bytes32 _blockHash) {
    bytes32 _check = block.blockhash(_blockNumber);
    bhCheck = _blockHash;
    bnCheck = _blockNumber;
    if (_check == _blockHash) {
      isFork = true;
    }
  }
}
