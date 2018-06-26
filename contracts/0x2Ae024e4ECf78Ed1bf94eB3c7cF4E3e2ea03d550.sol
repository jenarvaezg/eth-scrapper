
//Address: 0x2Ae024e4ECf78Ed1bf94eB3c7cF4E3e2ea03d550
//Contract name: SamsungToken
//Balance: 0 Ether
//Verification Date: 9/28/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.11;
contract SamsungToken {
    string public name;
    string public symbol;
    uint8 public decimals;
    /* This creates an array with all balances */
    mapping(address => uint256) public balanceOf;

    function SamsungToken() {
        name = "SamsungToken";
        symbol = "SamsungToken";
        decimals = 2;
        balanceOf[msg.sender] = 88800000000000;
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) {
        /* Add and subtract new balances */
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    }
}
