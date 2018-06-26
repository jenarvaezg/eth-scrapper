
//Address: 0x2Fd8019ce2AAc3bf9DB18D851A57EFe1a6151BBF
//Contract name: OPL
//Balance: 0 Ether
//Verification Date: 5/7/2017
//Transacion Count: 67

// CODE STARTS HERE

pragma solidity ^0.4.8;

contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }

contract OPL {
    string public standard = 'ERC20';
    string public version = 'v0.1';
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;


    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;


    event Transfer(address indexed from, address indexed to, uint256 value);


    function OPL() {
        balanceOf[msg.sender] = 10000000;             
        totalSupply = 10000000;                        
        name = 'OnPlace Inc. Token';                                   
        symbol = 'OPL';                          
        decimals = 0;                            
    }

    function transfer(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;           
        if (balanceOf[_to] + _value < balanceOf[_to]) throw; 
        balanceOf[msg.sender] -= _value;                     
        balanceOf[_to] += _value;                            
        Transfer(msg.sender, _to, _value);                  
    }

    function approve(address _spender, uint256 _value)
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        return true;
    }

    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
        returns (bool success) {
        tokenRecipient spender = tokenRecipient(_spender);
        if (approve(_spender, _value)) {
            spender.receiveApproval(msg.sender, _value, this, _extraData);
            return true;
        }
    }        

    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
        if (balanceOf[_from] < _value) throw;                
        if (balanceOf[_to] + _value < balanceOf[_to]) throw;  
        if (_value > allowance[_from][msg.sender]) throw;   
        balanceOf[_from] -= _value;                          
        balanceOf[_to] += _value;                            
        allowance[_from][msg.sender] -= _value;
        Transfer(_from, _to, _value);
        return true;
    }

    function () {
        throw;
    }
}