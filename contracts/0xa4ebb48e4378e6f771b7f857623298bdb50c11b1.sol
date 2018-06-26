
//Address: 0xa4ebb48e4378e6f771b7f857623298bdb50c11b1
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 3/13/2018
//Transacion Count: 2

// CODE STARTS HERE

/*
 * DO NOT EDIT! DO NOT EDIT! DO NOT EDIT!
 *
 * This is an automatically generated file. It will be overwritten.
 *
 * For the original source see
 *    '/Users/ragolta/ETH/swaldman/helloworld/src/main/solidity/helloworld.sol'
 */

pragma solidity ^0.4.18;





contract HelloWorld{
    string input = "Hello world.";

    function sayHello() view public returns (string) {
        return input;
    }

    function setNewGreeting(string greeting) public {
        input = greeting;
    }
}
