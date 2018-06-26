
//Address: 0xa911F9e8D8fD08dD4E946643f7a75cA4D148b3D6
//Contract name: LhsTechnologyBlockchain
//Balance: 0 Ether
//Verification Date: 1/15/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract LhsTechnologyBlockchain {
    string constant message = "Welcome to the Library Of The Human Soul";

    function getMessage() public pure returns (string ret) {
        ret = message;
        return ret;
    }
}
