
//Address: 0x99eda543b6a82d2a94d1bc2e044434321352174f
//Contract name: MeetupToken
//Balance: 0 Ether
//Verification Date: 8/7/2017
//Transacion Count: 18

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract MeetupToken {
    
    uint256 public totalSupply;
    mapping (address => uint256) balances;
    
    string public name;               
    uint8 public decimals;                
    string public symbol;
   
    function MeetupToken(
        uint256 _initialAmount,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol
        ) {
        balances[msg.sender] = _initialAmount;      
        totalSupply = _initialAmount;                        
        name = _tokenName;                                   
        decimals = _decimalUnits;                            
        symbol = _tokenSymbol;                               
    }
    
    function transfer(address _to, uint256 _value) returns (bool success) {
        if (balances[msg.sender] >= _value) {
            balances[msg.sender] -= _value;
            balances[_to] += _value;
            Transfer(msg.sender, _to, _value);
            return true;
        } else { return false; }
    }

    function balanceOf(address _owner) constant returns (uint256 balance) {
        return balances[_owner];
    }
    
    function () {
        throw;
    }
    
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
}
