
//Address: 0x03ab37e5754f55c965101ba1623b3bc91e819b28
//Contract name: TestContract
//Balance: 0 Ether
//Verification Date: 12/23/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract TestContract {
    string name;
    function getName() public constant returns (string){
        return name;
    }
    function setName(string newName) public {
        name = newName;
    }
}
