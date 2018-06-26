
//Address: 0x10ee868321ab0fc2cb23de0e43b440c964c1ffdd
//Contract name: IdeaCoin
//Balance: 0 Ether
//Verification Date: 5/30/2018
//Transacion Count: 2

// CODE STARTS HERE

// $Idea Coin

pragma solidity ^0.4.4;


contract Token {

    function totalSupply() constant returns (uint256 supply) {}


    function balanceOf(address _owner) constant returns (uint256 balance) {}

    function transfer(address _to, uint256 _value) returns (bool success) {}

 
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {}

    function approve(address _spender, uint256 _value) returns (bool success) {}

   
    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {}

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}

contract StandardToken is Token {

    function transfer(address _to, uint256 _value) returns (bool success) {

        if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
            balances[msg.sender] -= _value;
            balances[_to] += _value;
            Transfer(msg.sender, _to, _value);
            return true;
        } else {return false;}
    }

    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {

        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
            balances[_to] += _value;
            balances[_from] -= _value;
            allowed[_from][msg.sender] -= _value;
            Transfer(_from, _to, _value);
            return true;
        } else {return false;}
    }

    function balanceOf(address _owner) constant returns (uint256 balance) {
        return balances[_owner];
    }

    function approve(address _spender, uint256 _value) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
      return allowed[_owner][_spender];
    }

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;
    uint256 public totalSupply;
}

contract IdeaCoin is StandardToken { 


    string public name;                
    uint8 public decimals;           
    string public symbol;                
    string public version = "1.0"; 
    uint256 public unitsOneEthCanBuy;    
    uint256 public totalEthInWei;         
    address public fundsWallet;           

 
    function IdeaCoin() {
        balances[msg.sender] = 21000000000000000000000000000;               
        totalSupply = 21000000000000000000000000000;                        
        name = "IdeaCoin";                                              
        decimals = 18;                                               
        symbol = "IDX";                                            
                                            
        fundsWallet = msg.sender;                                   
                          
    }
    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);

        if (!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) {throw;}
        return true;
    }
}