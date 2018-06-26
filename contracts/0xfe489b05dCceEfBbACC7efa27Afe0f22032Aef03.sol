
//Address: 0xfe489b05dCceEfBbACC7efa27Afe0f22032Aef03
//Contract name: myTime
//Balance: 0 Ether
//Verification Date: 7/3/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract mortal
{
    address owner;

    function mortal() { owner = msg.sender; }
    function kill() { if(msg.sender == owner) selfdestruct(owner); }
}

contract myTime is mortal
{
    uint deployTime;

    /* Constructor */
    function myTime() public
    {
        deployTime = block.timestamp;
    }

    function getBlockNumber() constant returns (uint)
    {
        return block.number;
    }

    function getDeployTime() constant returns (uint)
    {
        return deployTime;
    }

    function getBlockTime() constant returns (uint)
    {
        return block.timestamp;
    }

    function getNowTime() constant returns (uint)
    {
        return now;
    }
}
