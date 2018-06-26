
//Address: 0x2f976a5382c0c6214b3d8fe6bdc5379edd35d9d4
//Contract name: GetsBurned
//Balance: 0 Ether
//Verification Date: 3/10/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract GetsBurned {
    function () payable public {
    }

    function BurnMe() public {
        // Selfdestruct and send eth to self, 
        selfdestruct(address(this));
    }
}
