
//Address: 0x4726bf61c3a8df967b6f2c805659810e8d343218
//Contract name: Agriss
//Balance: 0 Ether
//Verification Date: 5/29/2018
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.4;

contract Agriss {
    uint8 public decimals = 18;
    mapping (address => uint256) public balanceOf;
    
    constructor (
        uint256 initialSupply
        ) public {
        balanceOf[msg.sender] = initialSupply * 10 ** uint256(decimals);              
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value);           
        require(balanceOf[_to] + _value >= balanceOf[_to]); 
        balanceOf[msg.sender] -= _value;                    
        balanceOf[_to] += _value;                           
    }

    function getBalanceOf(address src) constant public returns (uint256) {
        return balanceOf[src];
    }
}
