
//Address: 0xF5b86B8a7d3Ad269eDFf19e2f2D0C59b42AEFb13
//Contract name: mortal
//Balance: 0 Ether
//Verification Date: 2/11/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity 0.4.8;
contract mortal {
    /* Define variable owner of the type address*/
    address owner;

    /* this function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

contract greeter is mortal {
    /* define variable greeting of the type string */
    string greeting;

    /* this runs when the contract is executed */
    function greeter(string _greeting) public {
        greeting = _greeting;
    }

    /* main function */
    function greet() constant returns (string) {
        return greeting;
    }
}
