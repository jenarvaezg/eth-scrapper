
//Address: 0x0AFC9430e3C5B0949A58f49Bc9d134DEe87c74D1
//Contract name: PiggyBank
//Balance: 0 Ether
//Verification Date: 7/12/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract PiggyBank
{
    address creator;
    uint deposits;

    /* Constructor */
    function PiggyBank() public
    {
        creator = msg.sender;
        deposits = 0;
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

    function kill()
    {
        if( msg.sender == creator )
            selfdestruct(creator);
    }
}
