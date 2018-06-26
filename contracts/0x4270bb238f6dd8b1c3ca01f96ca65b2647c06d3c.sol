
//Address: 0x4270bb238f6dd8b1c3ca01f96ca65b2647c06d3c
//Contract name: LockedToken
//Balance: 0 Ether
//Verification Date: 4/12/2018
//Transacion Count: 26680

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract owned {
    address public owner;

    function owned() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        owner = newOwner;
    }
}

interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }

contract TokenERC20 {
    // Public variables of the token
    string public name;
    string public symbol;
    uint8 public decimals = 18;
    // 18 decimals is the strongly suggested default, avoid changing it
    uint256 public totalSupply;

    // This creates an array with all balances
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    // This generates a public event on the blockchain that will notify clients
    event Transfer(address indexed from, address indexed to, uint256 value);

    // This notifies clients about the amount burnt
    event Burn(address indexed from, uint256 value);

    /**
     * Constrctor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */
    function TokenERC20(
        uint256 initialSupply,
        string tokenName,
        string tokenSymbol
    ) public {
        totalSupply = initialSupply * 10 ** uint256(decimals);  // Update total supply with the decimal amount
        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
        name = tokenName;                                   // Set the name for display purposes
        symbol = tokenSymbol;                               // Set the symbol for display purposes
    }

    /**
     * Internal transfer, only can be called by this contract
     */
    function _transfer(address _from, address _to, uint256 _value) internal {
        // Prevent transfer to 0x0 address. Use burn() instead
        require(_to != 0x0);
        // Check if the sender has enough
        require(balanceOf[_from] >= _value);
        // Check for overflows
        require(balanceOf[_to] + _value > balanceOf[_to]);
        // Save this for an assertion in the future
        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
        // Subtract from the sender
        balanceOf[_from] -= _value;
        // Add the same to the recipient
        balanceOf[_to] += _value;
        Transfer(_from, _to, _value);
        // Asserts are used to use static analysis to find bugs in your code. They should never fail
        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    }

    /**
     * Transfer tokens
     *
     * Send `_value` tokens to `_to` from your account
     *
     * @param _to The address of the recipient
     * @param _value the amount to send
     */
    function transfer(address _to, uint256 _value) public returns (bool ok){
        _transfer(msg.sender, _to, _value);
        return true;
    }

    /**
     * Transfer tokens from other address
     *
     * Send `_value` tokens to `_to` in behalf of `_from`
     *
     * @param _from The address of the sender
     * @param _to The address of the recipient
     * @param _value the amount to send
     */
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     // Check allowance
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }

    /**
     * Set allowance for other address
     *
     * Allows `_spender` to spend no more than `_value` tokens in your behalf
     *
     * @param _spender The address authorized to spend
     * @param _value the max amount they can spend
     */
    function approve(address _spender, uint256 _value) 
        public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        return true;
    }

    /**
     * Set allowance for other address and notify
     *
     * Allows `_spender` to spend no more than `_value` tokens in your behalf, and then ping the contract about it
     *
     * @param _spender The address authorized to spend
     * @param _value the max amount they can spend
     * @param _extraData some extra information to send to the approved contract
     */
    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
        public
        returns (bool success) {
        tokenRecipient spender = tokenRecipient(_spender);
        if (approve(_spender, _value)) {
            spender.receiveApproval(msg.sender, _value, this, _extraData);
            return true;
        }
    }

    /**
     * Destroy tokens
     *
     * Remove `_value` tokens from the system irreversibly
     *
     * @param _value the amount of money to burn
     */
    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
        balanceOf[msg.sender] -= _value;            // Subtract from the sender
        totalSupply -= _value;                      // Updates totalSupply
        Burn(msg.sender, _value);
        return true;
    }

    /**
     * Destroy tokens from other account
     *
     * Remove `_value` tokens from the system irreversibly on behalf of `_from`.
     *
     * @param _from the address of the sender
     * @param _value the amount of money to burn
     */
    function burnFrom(address _from, uint256 _value) public returns (bool success) {
        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
        require(_value <= allowance[_from][msg.sender]);    // Check allowance
        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
        totalSupply -= _value;                              // Update totalSupply
        Burn(_from, _value);
        return true;
    }
}

contract SafeMath {
    function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a * b;
        assert(a == 0 || c / a == b);
        return c;
    }

    function safeDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b > 0);
        uint256 c = a / b;
        assert(a == b * c + a % b);
        return c;
    }

    function safeSub(uint256 a, uint256 b) internal  pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c>=a && c>=b);
        return c;
    }
}

contract LockedToken is owned, TokenERC20, SafeMath {

    struct TokenLocked {
        uint256 amount;
        uint256 startDate;
        uint256 lastDate;  
        uint256 batches;
    }

    mapping (address => TokenLocked) internal lockedTokenOf;
    mapping (address => bool) internal isLocked;

    modifier canTransfer(address _sender, uint256 _value) {
        require(_value <= spendableBalanceOf(_sender));
        _;
    }   

    function LockedToken (
        uint256 initialSupply,
        string tokenName,
        string tokenSymbol
    )TokenERC20(initialSupply, tokenName, tokenSymbol) public {}

    function transfer(address _to, uint256 _value)
            canTransfer(msg.sender, _value)
            public
            returns (bool success) {
        return super.transfer(_to, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value)
            canTransfer(_from, _value)
            public
            returns (bool success) {
        return super.transferFrom(_from, _to, _value);
    }

    function transferAndLock(
            address _to, 
            uint256 _value,
            uint256 _startDate,
            uint256 _lastDate,
            uint256 _batches) 
            onlyOwner public {
        //doLock
        require(_to != 0x0);
        require(_startDate < _lastDate);
        require(_batches > 0);
        TokenLocked memory tokenLocked = TokenLocked(_value, _startDate, _lastDate, _batches);
        lockedTokenOf[_to] = tokenLocked;
        isLocked[_to] = true;

        //doTransfer
        super.transfer(_to, _value);
    }

    function spendableBalanceOf(address _holder) constant public returns (uint) {
        return transferableTokens(_holder, uint64(now));
    }

    function transferableTokens(address holder, uint256 time) constant public returns (uint256) {
        
        TokenLocked storage tokenLocked = lockedTokenOf[holder];

        if (!isLocked[holder]) return balanceOf[holder];

        uint256 amount = tokenLocked.amount;
        uint256 startDate = tokenLocked.startDate;
        uint256 lastDate = tokenLocked.lastDate;
        uint256 batches = tokenLocked.batches;

        if (time < startDate) return 0;
        if (time >= lastDate) return balanceOf[holder]; 

        //caculate transferableTokens     
        uint256 originalTransferableTokens = safeMul(safeDiv(amount, batches), 
                                        safeDiv(
                                        safeMul(safeSub(time, startDate), batches),
                                        safeSub(lastDate, startDate)
                                        ));

        uint256 lockedAmount = safeSub(amount, originalTransferableTokens);

        if (balanceOf[holder] <= lockedAmount) return 0;

        uint256 actualTransferableTokens = safeSub(balanceOf[holder], lockedAmount);                             

        return  actualTransferableTokens;
    }

    function  lastTokenIsTransferableDate(address holder) constant public returns(uint256 date) {
        date = uint256(now);
        if (!isLocked[holder]) return date;
        
        TokenLocked storage tokenLocked = lockedTokenOf[holder];       
        return tokenLocked.lastDate;
    }

    function ()  payable public {
        revert();
    }
}