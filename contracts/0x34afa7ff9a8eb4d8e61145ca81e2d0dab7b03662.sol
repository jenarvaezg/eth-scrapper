
//Address: 0x34afa7ff9a8eb4d8e61145ca81e2d0dab7b03662
//Contract name: Destroyable
//Balance: 0 Ether
//Verification Date: 5/8/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract Destroyable{
    /**
     * @notice Allows to destroy the contract and return the tokens to the owner.
     */
    function destroy() public{
        selfdestruct(address(this));
    }
}
