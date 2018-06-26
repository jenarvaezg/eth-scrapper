
//Address: 0x95953fe7b13d3b60aee496b541cd6e157bcf3764
//Contract name: WhosItGonnaBe
//Balance: 0 Ether
//Verification Date: 9/16/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.4;

contract WhosItGonnaBe {
  address internal lastSender;
  uint public totalWei;
  uint public expirationBlock;

  // Good luck to all
  function () payable {
    totalWei += msg.value;

    // Will happen 200 blocks after contract creation
    // 100000000000000000 is .1 eth, minimum payout
    if (block.number >= expirationBlock && totalWei > 100000000000000000) {
      // Make sure you have some eth in your wallet to cover gas
      lastSender.transfer(totalWei);
    }

    lastSender = msg.sender;
  }

  function WhosItGonnaBe() {
    expirationBlock = block.number + 200;
  }

}
