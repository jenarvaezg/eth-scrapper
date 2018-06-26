
//Address: 0x3c45122a41d36b3fff486442d02e9db2cc33cbe6
//Contract name: myTime
//Balance: 0 Ether
//Verification Date: 7/7/2017
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

    function getDeploytimeBlocktimeBlocknumber() constant returns (uint, uint, uint)
    {
        return (deployTime, block.timestamp, block.number);
    }

}
