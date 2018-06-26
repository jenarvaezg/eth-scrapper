
//Address: 0xf7c898ee6cb0dd5962997bb252deea833653a3c7
//Contract name: Inner2
//Balance: 0 Ether
//Verification Date: 6/25/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract Outer {
    Inner1 public myInner1 = new Inner1();
    
    function callSomeFunctionViaOuter() public {
        myInner1.callSomeFunctionViaInner1();
    }
}

contract Inner1 {
    Inner2 public myInner2 = new Inner2();
    
    function callSomeFunctionViaInner1() public {
        myInner2.doSomething();
    }
}

contract Inner2 {
    uint256 someValue;
    event SetValue(uint256 val);
    
    function doSomething() public {
        someValue = block.timestamp;
        emit SetValue(someValue);
    }
}
