
//Address: 0x589d5be703c93fede7de18c24f6e82f0a6e18005
//Contract name: Teste
//Balance: 0 Ether
//Verification Date: 2/12/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract Teste 
{
    uint creationDate;
    
    function Teste() public 
    {
        creationDate = now;
    }
    
    function today() view public returns (uint)
    {
       return ( now / 1 days);
    }
    
    function pastFiveMinutes() view public returns (bool)
    {
        return (now >= creationDate + 5 * 1 minutes);
    }

    function pastTenMinutes() view public returns (bool)
    {
        return (now >= creationDate + 10 * 1 minutes);
    }

    function pastOneHour() view public returns (bool)
    {
        return (now >= creationDate + 1 * 1 hours);
    }
    
    function pastOneDay() view public returns (bool)
    {
        return (now >= creationDate + 1 * 1 days);
    }

}
