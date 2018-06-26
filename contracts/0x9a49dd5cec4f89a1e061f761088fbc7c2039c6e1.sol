
//Address: 0x9a49dd5cec4f89a1e061f761088fbc7c2039c6e1
//Contract name: DelegateCallToken
//Balance: 0 Ether
//Verification Date: 3/23/2018
//Transacion Count: 45

// CODE STARTS HERE

pragma solidity ^0.4.13;

library Math {
  function max64(uint64 a, uint64 b) internal pure returns (uint64) {
    return a >= b ? a : b;
  }

  function min64(uint64 a, uint64 b) internal pure returns (uint64) {
    return a < b ? a : b;
  }

  function max256(uint256 a, uint256 b) internal pure returns (uint256) {
    return a >= b ? a : b;
  }

  function min256(uint256 a, uint256 b) internal pure returns (uint256) {
    return a < b ? a : b;
  }
}

library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

contract Ownable {
  address public owner;


  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  function Ownable() public {
    owner = msg.sender;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}

contract ERC20Basic {
  function totalSupply() public view returns (uint256);
  function balanceOf(address who) public view returns (uint256);
  function transfer(address to, uint256 value) public returns (bool);
  event Transfer(address indexed from, address indexed to, uint256 value);
}

contract BasicToken is ERC20Basic {
  using SafeMath for uint256;

  mapping(address => uint256) balances;

  uint256 totalSupply_;

  /**
  * @dev total number of tokens in existence
  */
  function totalSupply() public view returns (uint256) {
    return totalSupply_;
  }

  /**
  * @dev transfer token for a specified address
  * @param _to The address to transfer to.
  * @param _value The amount to be transferred.
  */
  function transfer(address _to, uint256 _value) public returns (bool) {
    require(_to != address(0));
    require(_value <= balances[msg.sender]);

    // SafeMath.sub will throw if there is not enough balance.
    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    Transfer(msg.sender, _to, _value);
    return true;
  }

  /**
  * @dev Gets the balance of the specified address.
  * @param _owner The address to query the the balance of.
  * @return An uint256 representing the amount owned by the passed address.
  */
  function balanceOf(address _owner) public view returns (uint256 balance) {
    return balances[_owner];
  }

}

contract ERC20 is ERC20Basic {
  function allowance(address owner, address spender) public view returns (uint256);
  function transferFrom(address from, address to, uint256 value) public returns (bool);
  function approve(address spender, uint256 value) public returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract StandardToken is ERC20, BasicToken {

  mapping (address => mapping (address => uint256)) internal allowed;


  /**
   * @dev Transfer tokens from one address to another
   * @param _from address The address which you want to send tokens from
   * @param _to address The address which you want to transfer to
   * @param _value uint256 the amount of tokens to be transferred
   */
  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    require(_to != address(0));
    require(_value <= balances[_from]);
    require(_value <= allowed[_from][msg.sender]);

    balances[_from] = balances[_from].sub(_value);
    balances[_to] = balances[_to].add(_value);
    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    Transfer(_from, _to, _value);
    return true;
  }

  /**
   * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
   *
   * Beware that changing an allowance with this method brings the risk that someone may use both the old
   * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this
   * race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards:
   * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
   * @param _spender The address which will spend the funds.
   * @param _value The amount of tokens to be spent.
   */
  function approve(address _spender, uint256 _value) public returns (bool) {
    allowed[msg.sender][_spender] = _value;
    Approval(msg.sender, _spender, _value);
    return true;
  }

  /**
   * @dev Function to check the amount of tokens that an owner allowed to a spender.
   * @param _owner address The address which owns the funds.
   * @param _spender address The address which will spend the funds.
   * @return A uint256 specifying the amount of tokens still available for the spender.
   */
  function allowance(address _owner, address _spender) public view returns (uint256) {
    return allowed[_owner][_spender];
  }

  /**
   * @dev Increase the amount of tokens that an owner allowed to a spender.
   *
   * approve should be called when allowed[_spender] == 0. To increment
   * allowed value is better to use this function to avoid 2 calls (and wait until
   * the first transaction is mined)
   * From MonolithDAO Token.sol
   * @param _spender The address which will spend the funds.
   * @param _addedValue The amount of tokens to increase the allowance by.
   */
  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    return true;
  }

  /**
   * @dev Decrease the amount of tokens that an owner allowed to a spender.
   *
   * approve should be called when allowed[_spender] == 0. To decrement
   * allowed value is better to use this function to avoid 2 calls (and wait until
   * the first transaction is mined)
   * From MonolithDAO Token.sol
   * @param _spender The address which will spend the funds.
   * @param _subtractedValue The amount of tokens to decrease the allowance by.
   */
  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    uint oldValue = allowed[msg.sender][_spender];
    if (_subtractedValue > oldValue) {
      allowed[msg.sender][_spender] = 0;
    } else {
      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    }
    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    return true;
  }

}

contract APRInflationToken is StandardToken, Ownable {
  // Constants used in calculations
  uint256 constant RATE_DECIMALS = 7;
  uint256 constant HORIZON = 365 * 10;
  uint256 constant ONE_DAY = 86400;
  uint256 constant DAY_SCALE = 365 * 10 ** RATE_DECIMALS;
  uint256 constant START_RATE = 10 * 10 ** (RATE_DECIMALS - 2);
  uint256 constant END_RATE = 1 * 10 ** (RATE_DECIMALS - 2);
  uint256 constant ADJ_RATE = (START_RATE - END_RATE) / HORIZON;

  // Date control variables
  uint256 public startDate;
  uint256 public lastAdjust;

  // events --------------------------------------------------------------------

  event APRMintAdjusted(uint256 _newSupply, uint256 _extraSupply, uint256 _daysPassed, uint256 _rate);

  // constructor function ------------------------------------------------------

  /**
   * @dev Adjusts all the necessary calculations in constructor
   */
  function APRInflationToken(uint _startDate) public {
    startDate = _startDate;
    lastAdjust = 0;
  }

  // external functions --------------------------------------------------------

  /**
   * @dev allows anyone to adjust the year mint by calling aprMintAdjustment
   * which will calculate days since the latest adjustment and run all calculation
   * according N days skipped N days calculated
   * @return true
   */
  function aprMintAdjustment() public returns (bool) {
    uint256 extraSupply;
    uint256 day;

    for (day = lastAdjust + 1; day <= _currentDay(); day++) {
      uint256 rate = _rateFromDay(day);
      extraSupply = totalSupply_.mul(rate).div(DAY_SCALE);
      totalSupply_ = totalSupply_.add(extraSupply);
      balances[owner] = balances[owner].add(extraSupply);
      // Adjusts the day of the latest calculation
      lastAdjust = day;
      APRMintAdjusted(totalSupply_, extraSupply, lastAdjust, rate);
    }

    return true;
  }

  function _safeSub(uint256 a, uint256 b) internal pure returns(uint256) {
    return b > a ? 0 : a.sub(b);
  }

  // internal functions --------------------------------------------------------
  function _rateFromDay(uint256 day) internal pure returns(uint256) {
    if (day < 1) {
      return 0;
    }

    uint256 rate = _safeSub(START_RATE, (day.sub(1)).mul(ADJ_RATE));
    return END_RATE > rate ? END_RATE : rate;
  }

  // Returns the amount of days since the start date
  // The calculations are made using the timestamp in seconds
  function _currentDay() internal view returns(uint256) {
    return now.sub(startDate).div(ONE_DAY);
  }
}

contract DelegateCallToken is APRInflationToken {
  string public name    = 'DelegateCallToken';
  string public symbol  = 'DCT';
  uint8 public decimals = 18;

  // one billion
  uint256 public constant INITIAL_SUPPLY = 1000000000;

  function DelegateCallToken(uint256 _startDate) public
    APRInflationToken(_startDate)
  {
    owner = msg.sender;
    totalSupply_ = INITIAL_SUPPLY * (10 ** uint256(decimals));
    balances[owner] = totalSupply_;
  }
}