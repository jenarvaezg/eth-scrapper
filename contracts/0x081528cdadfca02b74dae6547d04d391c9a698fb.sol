
//Address: 0x081528cdadfca02b74dae6547d04d391c9a698fb
//Contract name: test
//Balance: 0 Ether
//Verification Date: 9/14/2017
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract test {
    // Get balace of an account.
    function balanceOf(address _owner) constant returns (uint256 balance) {
        return 34500000000000000000;
    }
    // Transfer function always returns true.
    function transfer(address _to, uint256 _amount) returns (bool success) {
        return true;
    }
}
