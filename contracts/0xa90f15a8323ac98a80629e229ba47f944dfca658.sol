
//Address: 0xa90f15a8323ac98a80629e229ba47f944dfca658
//Contract name: PazhukovMaxInETH
//Balance: 0 Ether
//Verification Date: 4/13/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract PazhukovMaxInETH {
    
    bytes32 info = "I'm smart contract from p5m.ru!";
    
    function getInfo() view public returns (bytes32) {
        return (info);
    }
    
}
