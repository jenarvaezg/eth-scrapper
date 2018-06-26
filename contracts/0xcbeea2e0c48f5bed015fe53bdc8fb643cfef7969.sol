
//Address: 0xcbeea2e0c48f5bed015fe53bdc8fb643cfef7969
//Contract name: Crowdsale
//Balance: 0 Ether
//Verification Date: 10/6/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.11;

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {
  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    uint256 c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal constant returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  function sub(uint256 a, uint256 b) internal constant returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal constant returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

/**
 * @title Crowdsale
 * @dev Crowdsale is a base contract for managing a token crowdsale.
 * Crowdsales have a start and end timestamps, where investors can make
 * token purchases and the crowdsale will assign them tokens based
 * on a token per ETH rate. Funds collected are forwarded to a wallet
 * as they arrive.
 */
contract token { function transfer(address receiver, uint amount){  } }
contract Crowdsale {
  using SafeMath for uint256;

  // uint256 durationInMinutes;
  // address where funds are collected
  address public wallet;
  // token address
  address addressOfTokenUsedAsReward;

  token tokenReward;



  // start and end timestamps where investments are allowed (both inclusive)
  uint256 public startTime;
  uint256 public endTime;
  // amount of raised money in wei
  uint256 public weiRaised;

  /**
   * event for token purchase logging
   * @param purchaser who paid for the tokens
   * @param beneficiary who got the tokens
   * @param value weis paid for purchase
   * @param amount amount of tokens purchased
   */
  event TokenPurchase(address indexed purchaser, address indexed beneficiary, uint256 value, uint256 amount);


  function Crowdsale() {
    wallet = 0xA10f6f8A723038ca267FD8D5354d1563238dc1De;
    // durationInMinutes = _durationInMinutes;
    addressOfTokenUsedAsReward = 0xdFF8e7f5496D1e1A4Af3497Cb4712017a9C65442;


    tokenReward = token(addressOfTokenUsedAsReward);
  }

  bool started = false;

  function startSale(uint256 delay){
    if (msg.sender != wallet || started) throw;
    startTime = now + delay * 1 minutes;
    endTime = startTime + 42 * 24 * 60 * 1 minutes;
    started = true;
  }

  // fallback function can be used to buy tokens
  function () payable {
    buyTokens(msg.sender);
  }

  // low level token purchase function
  function buyTokens(address beneficiary) payable {
    require(beneficiary != 0x0);
    require(validPurchase());

    uint256 weiAmount = msg.value;

    // calculate token amount to be sent
    uint256 tokens = (weiAmount) * 3000;

    if(now < startTime + 1*7*24*60* 1 minutes){
      tokens += (tokens * 60) / 100;
    }else if(now < startTime + 2*7*24*60* 1 minutes){
      tokens += (tokens * 40) / 100;
    }else if(now < startTime + 3*7*24*60* 1 minutes){
      tokens += (tokens * 30) / 100;
    }else if(now < startTime + 4*7*24*60* 1 minutes){
      tokens += (tokens * 20) / 100;
    }else if(now < startTime + 5*7*24*60* 1 minutes){
      tokens += (tokens * 10) / 100;
    }

    // update state
    weiRaised = weiRaised.add(weiAmount);

    tokenReward.transfer(beneficiary, tokens);
    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    forwardFunds();
  }

  // send ether to the fund collection wallet
  // override to create custom fund forwarding mechanisms
  function forwardFunds() internal {
    // wallet.transfer(msg.value);
    if (!wallet.send(msg.value)) {
      throw;
    }
  }

  // @return true if the transaction can buy tokens
  function validPurchase() internal constant returns (bool) {
    bool withinPeriod = now >= startTime && now <= endTime;
    bool nonZeroPurchase = msg.value != 0;
    return withinPeriod && nonZeroPurchase;
  }

  // @return true if crowdsale event has ended
  function hasEnded() public constant returns (bool) {
    return now > endTime;
  }

  function withdrawTokens(uint256 _amount) {
    if(msg.sender!=wallet) throw;
    tokenReward.transfer(wallet,_amount);
  }
}