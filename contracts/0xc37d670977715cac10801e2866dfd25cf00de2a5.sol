
//Address: 0xc37d670977715cac10801e2866dfd25cf00de2a5
//Contract name: OuterWithEth
//Balance: 0 Ether
//Verification Date: 6/25/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract OuterWithEth {
    Inner1WithEth public myInner1 = new Inner1WithEth();
    
    function callSomeFunctionViaOuter() public payable {
        myInner1.callSomeFunctionViaInner1.value(msg.value)();
    }
}

contract Inner1WithEth {
    Inner2WithEth public myInner2 = new Inner2WithEth();
    
    function callSomeFunctionViaInner1() public payable{
        myInner2.doSomething.value(msg.value)();
    }
}

contract Inner2WithEth {
    uint256 someValue;
    event SetValue(uint256 val);
    
    function doSomething() public payable {
        someValue = block.timestamp;
        emit SetValue(someValue);
        msg.sender.transfer(msg.value);
    }
}
