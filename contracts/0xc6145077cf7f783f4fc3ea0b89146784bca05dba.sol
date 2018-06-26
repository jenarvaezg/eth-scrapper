
//Address: 0xc6145077cf7f783f4fc3ea0b89146784bca05dba
//Contract name: Hellina
//Balance: 0 Ether
//Verification Date: 4/4/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Hellina{
    address owner;
    function Hellina(){
        owner=msg.sender;
    }
    
    function Buy() payable{
        
    }
    
    function Withdraw(){
        owner.transfer(address(this).balance);
    }
}
