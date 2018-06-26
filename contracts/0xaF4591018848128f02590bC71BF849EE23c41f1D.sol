
//Address: 0xaF4591018848128f02590bC71BF849EE23c41f1D
//Contract name: NumberFactory
//Balance: 0 Ether
//Verification Date: 12/26/2017
//Transacion Count: 4

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
