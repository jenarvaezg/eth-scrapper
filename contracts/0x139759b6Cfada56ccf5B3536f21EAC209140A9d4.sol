
//Address: 0x139759b6Cfada56ccf5B3536f21EAC209140A9d4
//Contract name: Token
//Balance: 0 Ether
//Verification Date: 11/14/2016
//Transacion Count: 23

// CODE STARTS HERE

pragma solidity ^0.4.2;
contract Token {
    address public issuer;
    mapping (address => uint) public balances;

    function Token() {
        issuer = msg.sender;
        balances[issuer] = 1000000;
    }

    function transfer(address _to, uint _amount) {
        if (balances[msg.sender] < _amount) {
            throw;
        }

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }
}
