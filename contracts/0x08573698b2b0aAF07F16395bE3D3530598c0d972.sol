
//Address: 0x08573698b2b0aAF07F16395bE3D3530598c0d972
//Contract name: PiggyBank
//Balance: 0 Ether
//Verification Date: 7/13/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract PiggyBank
{
    address creator;
    uint deposits;
    uint unlockTime;

    /* Constructor */
    function PiggyBank() public
    {
        creator = msg.sender;
        deposits = 0;
        unlockTime = now + 10 minutes;
    }

    function() payable
    {
        deposit();
    }

    function deposit() payable returns (uint)
    {
        if( msg.value > 0 )
            deposits = deposits + 1;

        return getNumberOfDeposits();
    }

    function getNumberOfDeposits() constant returns (uint)
    {
        return deposits;
    }

    function getUnlockTime() constant returns (uint)
    {
        return unlockTime;
    }

    function kill()
    {
        if( msg.sender == creator && now >= unlockTime )
            selfdestruct(creator);
    }
}
