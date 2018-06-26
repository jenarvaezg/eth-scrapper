
//Address: 0xbda6b8db38a9af49f1e57d6f91e114e7e5d80dd4
//Contract name: MyToken
//Balance: 0 Ether
//Verification Date: 6/29/2017
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract MyToken {
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;

    /* Initializes contract with initial supply tokens to the creator of the contract */
    function MyToken(
        
        ) {
        balanceOf[msg.sender] = 210000;              // Give the creator all initial tokens
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
        balanceOf[_to] += _value;                            // Add the same to the recipient
    }
}
