
//Address: 0xeb31c53605b2294fA5476326641d4A78Ef2394aB
//Contract name: ReverseBugBounty
//Balance: 0 Ether
//Verification Date: 4/15/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract ReverseBugBounty {
    address owner;

    function () payable {
        revert; 
    }

    function ReverseBugBounty(){
        owner = msg.sender;
    }
    
    function destroy(){
        selfdestruct(owner);
    }
}
