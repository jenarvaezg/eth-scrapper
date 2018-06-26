
//Address: 0xc1c826668e3661e137e17186b9c64cc408fa5cdd
//Contract name: TimeBasedContract
//Balance: 0.0013 Ether
//Verification Date: 6/15/2018
//Transacion Count: 26

// CODE STARTS HERE

pragma solidity ^0.4.4;

contract TimeBasedContract
{
    function TimeBasedContract() public {
    }

    function() public payable {
        uint minutesTime = (now / 60) % 60;
        require(((minutesTime/10)*10) == minutesTime);
    }
}
