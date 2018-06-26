
//Address: 0xeb3c1a7f816da958a0f8b9f4ef63a19b26d03739
//Contract name: storadge
//Balance: 0 Ether
//Verification Date: 11/6/2016
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.2;

contract storadge {
    
    event log(string description);
    
	function save(
        string mdhash
    )
    {
        log(mdhash);
    }
}
