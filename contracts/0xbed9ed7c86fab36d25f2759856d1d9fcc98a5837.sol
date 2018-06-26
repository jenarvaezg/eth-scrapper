
//Address: 0xbed9ed7c86fab36d25f2759856d1d9fcc98a5837
//Contract name: MyDanaToken
//Balance: 0 Ether
//Verification Date: 9/14/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract MyDanaToken {
    // This creates an array with all balances
    mapping (address => uint256) public balanceOf;

    // Initializes contract with initial supply tokens to the creator of the contract
    function MyDanaToken() {
        balanceOf[msg.sender] = 200;              // Give the creator all initial tokens
    }

    // Send coins
    function transfer(address _to, uint256 _value) {
        require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
        balanceOf[msg.sender] -= _value;                    // Subtract from the sender
        balanceOf[_to] += _value;                           // Add the same to the recipient
    }
}
