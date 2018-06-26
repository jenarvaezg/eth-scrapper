
//Address: 0x9c37948b61ca1ba2c861adf9ede5cc27b7cc1455
//Contract name: Airdropper
//Balance: 0 Ether
//Verification Date: 5/24/2018
//Transacion Count: 42

// CODE STARTS HERE

// 0.4.21+commit.dfe3193c.Emscripten.clang
pragma solidity ^0.4.21;

// we assume ERC20 or compatible token with most basic imaginable transfer function
interface ERC20 {
  function transfer( address to, uint256 value ) external;
}

contract owned {
  address public owner;

  function owned() public {
    owner = msg.sender;
  }

  function changeOwner( address _miner ) public onlyOwner {
    owner = _miner;
  }

  modifier onlyOwner {
    require (msg.sender == owner);
    _;
  }
}

//
// NOTE: this Airdropper becomes msg.sender for the token transfer and must
//       already be the holder of enough tokens
//
contract Airdropper is owned {

  // NOTE: caller responsible to check ethstats.net for block size limit
  function airdrop( address tokAddr,
                    address[] dests,
                    uint[] quantities ) public onlyOwner returns (uint) {

    for (uint ii = 0; ii < dests.length; ii++) {
      ERC20(tokAddr).transfer( dests[ii], quantities[ii] );
    }

    return ii;
  }
}
