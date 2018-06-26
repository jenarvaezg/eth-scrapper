
//Address: 0x91583c4cca21ee968adee187bdb94186da992b73
//Contract name: TestRevert
//Balance: 0 Ether
//Verification Date: 10/19/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract TestRevert {
    function test_require() public {
        require(now < 1000);
    }

    function test_assert() public {
        assert(now < 1000);
    }
}
