
//Address: 0x8a630b2d1e25f1ad066feaa090f5bdb63a1451cc
//Contract name: EtherGame
//Balance: 0 Ether
//Verification Date: 4/22/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract EtherGame 
{
    uint[] a;
    function Test1() public returns(address)
    {
        return msg.sender;
    }
    function Test2() returns(address)
    {
        return msg.sender;
    }
    function Test3() public returns(uint)
    {
        return a.length;
    }
    function Test4() returns(uint)
    {
        return a.length;
    }
    function Kill()
    {
        selfdestruct(msg.sender);
    }
}
