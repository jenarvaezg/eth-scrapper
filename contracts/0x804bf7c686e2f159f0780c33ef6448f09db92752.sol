
//Address: 0x804bf7c686e2f159f0780c33ef6448f09db92752
//Contract name: messageBoard
//Balance: 0 Ether
//Verification Date: 6/13/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract messageBoard{
   string public message;
   function messageBoard(string initMessage) public{
       message=initMessage;
   }
   function editMessage(string editMessage) public{
       message=editMessage;
   }
   function viewMessage() public returns(string){
       return message;
   }
    
}
