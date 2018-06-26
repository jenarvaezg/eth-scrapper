
//Address: 0x115c2a882180ee2d3ddc1dea06b2dc9c1802f0fb
//Contract name: AirdropEth
//Balance: 0 Ether
//Verification Date: 3/23/2018
//Transacion Count: 1

// CODE STARTS HERE

contract ERC20 {
  function transfer(address _recipient, uint256 _value) public returns (bool success);
}

contract AirdropEth {
  function drop(address[] recipients, uint256[] values) payable public {
    for (uint256 i = 0; i < recipients.length; i++) {
      recipients[i].transfer(values[i]);
    }
  }
}
