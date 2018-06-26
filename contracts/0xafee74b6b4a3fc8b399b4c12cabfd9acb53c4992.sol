
//Address: 0xafee74b6b4a3fc8b399b4c12cabfd9acb53c4992
//Contract name: MultiSender
//Balance: 0 Ether
//Verification Date: 3/8/2018
//Transacion Count: 21

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract ERC20 {
  function transferFrom(address from, address to, uint256 value) public returns (bool);
}


contract MultiSender {
  function tokenFallback(address /*_from*/, uint _value, bytes /*_data*/) public {
    require(false);
  }

  function multisendToken(address tokAddress, address[] _dests, uint256[] _amounts) public {
    ERC20 tok = ERC20(tokAddress);
    for (uint i = 0; i < _dests.length; i++){
        tok.transferFrom(msg.sender, _dests[i], _amounts[i]);
    }
  }

  function multisendEth(address[] _dests, uint256[] _amounts) public payable {
    for (uint i = 0; i < _dests.length; i++){
        _dests[i].transfer(_amounts[i]);
    }
    require(this.balance == 0);
  }
}
