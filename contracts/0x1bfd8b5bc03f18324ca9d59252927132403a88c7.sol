
//Address: 0x1bfd8b5bc03f18324ca9d59252927132403a88c7
//Contract name: Airdrop
//Balance: 0 Ether
//Verification Date: 3/14/2018
//Transacion Count: 7

// CODE STARTS HERE

contract ERC20 {
  function transfer(address _recipient, uint256 _value) public returns (bool success);
}

contract Airdrop {
  function drop(ERC20 token, address[] recipients, uint256[] values) public {
    for (uint256 i = 0; i < recipients.length; i++) {
      token.transfer(recipients[i], values[i]);
    }
  }
}
