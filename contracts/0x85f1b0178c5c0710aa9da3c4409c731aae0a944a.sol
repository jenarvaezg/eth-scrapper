
//Address: 0x85f1b0178c5c0710aa9da3c4409c731aae0a944a
//Contract name: HSTPurgatory
//Balance: 0 Ether
//Verification Date: 11/13/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.18;

// This is the HST token purgatory, where Horizon State
// Transferrs tokens that are locked forever.
contract HSTPurgatory {
    
    function() public payable {
        revert();
    }

}
