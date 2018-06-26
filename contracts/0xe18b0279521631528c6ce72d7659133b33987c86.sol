
//Address: 0xe18b0279521631528c6ce72d7659133b33987c86
//Contract name: debug
//Balance: 0 Ether
//Verification Date: 4/28/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity 0.4.23;

contract debug {
    function () public  payable{
        revert("GET OUT!");
    }
}
