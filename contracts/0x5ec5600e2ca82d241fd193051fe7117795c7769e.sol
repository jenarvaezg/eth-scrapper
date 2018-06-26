
//Address: 0x5ec5600e2ca82d241fd193051fe7117795c7769e
//Contract name: time
//Balance: 0 Ether
//Verification Date: 6/5/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.21;
contract time{
function _time() view external returns (uint)
{
    return now ;
    
}
}
