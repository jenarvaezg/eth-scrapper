
//Address: 0xf1836e7610ccaed2055394577a774899e6df4909
//Contract name: TokenPeg
//Balance: 0 Ether
//Verification Date: 1/18/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract Token {
  function transferFrom(address from, address to, uint256 value) public returns (bool success);
  function transfer(address _to, uint256 _value) public returns (bool success);
}

contract TokenPeg {
  address public minimalToken;
  address public signalToken;
  bool public pegIsSetup;

  event Configured(address minToken, address sigToken);
  event SignalingEnabled(address exchanger, uint tokenCount);
  event SignalingDisabled(address exchanger, uint tokenCount);

  function TokenPeg() public {
    pegIsSetup = false;
  }

  function setupPeg(address _minimalToken, address _signalToken) public {
    require(!pegIsSetup);
    pegIsSetup = true;

    minimalToken = _minimalToken;
    signalToken = _signalToken;

    Configured(_minimalToken, _signalToken);
  }

  function tokenFallback(address _from, uint _value, bytes /*_data*/) public {
    require(pegIsSetup);
    require(msg.sender == signalToken);
    giveMinimalTokens(_from, _value);
  }

  function convertMinimalToSignal(uint amount) public {
    require(Token(minimalToken).transferFrom(msg.sender, this, amount));
    require(Token(signalToken).transfer(msg.sender, amount));

    SignalingEnabled(msg.sender, amount);
  }

  function convertSignalToMinimal(uint amount) public {
    require(Token(signalToken).transferFrom(msg.sender, this, amount));
  }

  function giveMinimalTokens(address from, uint amount) private {
    require(Token(minimalToken).transfer(from, amount));
    
    SignalingDisabled(from, amount);
  }

}
