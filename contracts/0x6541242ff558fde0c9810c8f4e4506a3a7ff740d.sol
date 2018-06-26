
//Address: 0x6541242ff558fde0c9810c8f4e4506a3a7ff740d
//Contract name: MyTest
//Balance: 0 Ether
//Verification Date: 6/12/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.23;

contract MyTest{
    string private name;
   
    function setName(string newName) public{
        name=newName;
    }
    
    function getName() public view returns(string){
        return name;
    }
    
}
