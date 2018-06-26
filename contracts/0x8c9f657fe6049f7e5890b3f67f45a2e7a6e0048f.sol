
//Address: 0x8c9f657fe6049f7e5890b3f67f45a2e7a6e0048f
//Contract name: TokenBurner
//Balance: 0 Ether
//Verification Date: 1/25/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract TokenBurner {
    address private _burner;

    function TokenBurner() public {
        _burner = msg.sender;
    }

    function () payable public {
    }

    function BurnMe () public {
        // Only let ourselves be able to burn
        if (msg.sender == _burner) {
            // Selfdestruct and send tokens to self, to burn them 
            selfdestruct(address(this));
        }
        
    }
}
