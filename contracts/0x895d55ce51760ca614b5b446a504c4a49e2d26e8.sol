
//Address: 0x895d55ce51760ca614b5b446a504c4a49e2d26e8
//Contract name: ObjectiveStorage
//Balance: 0 Ether
//Verification Date: 1/25/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract mortal {
    /* Define variable owner of the type address */
    address owner;

    /* This function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

contract ObjectiveStorage is mortal {
    address creator;
    string objective;
    
    function ObjectiveStorage(string _objective) public
    {
        creator = msg.sender;
        objective = _objective;
    }
    /* Main function */
    function getObjective() public constant returns (string) {
        return objective;
    }
}
