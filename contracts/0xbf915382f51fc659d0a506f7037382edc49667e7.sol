
//Address: 0xbf915382f51fc659d0a506f7037382edc49667e7
//Contract name: Number
//Balance: -
//Verification Date: 12/26/2017
//Transacion Count: 0

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract NumberFactory{
    event NumberCreated(address);
    address public last;
 function createNumber(uint _number) public {
     last= new Number(_number);
     NumberCreated(last);
     
    
 } 
}

contract Number {
    uint number;
    
    function Number(uint _number) public {
    number=_number;
    }
    function change(uint _number) public {
    number=_number;
    }
}
