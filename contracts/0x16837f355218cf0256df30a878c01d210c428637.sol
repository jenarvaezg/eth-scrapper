
//Address: 0x16837f355218cf0256df30a878c01d210c428637
//Contract name: HelloWorld
//Balance: 0 Ether
//Verification Date: 11/17/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract HelloWorld
{
    address creator;
    string greeting;

    function HelloWorld(string _greeting) public
    {
        creator = msg.sender;
        greeting = _greeting;
    }

    function greet() constant returns (string)
    {
        return greeting;
    }

    function setGreeting(string _newgreeting)
    {
        greeting = _newgreeting;
    }

     /**********
     Standard kill() function to recover funds
     **********/

    function kill()
    {
        if (msg.sender == creator)
            suicide(creator);  // kills this contract and sends remaining funds back to creator
    }
}
