
//Address: 0xF7A1a5eeD7DaB1a7bCdA127B43DfAa1FF1800888
//Contract name: PiggyBank
//Balance: 0 Ether
//Verification Date: 7/11/2017
//Transacion Count: 5

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
