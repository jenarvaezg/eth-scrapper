
//Address: 0xaa54201cab79e4de3072ededd32ea68d8cfa2375
//Contract name: EtherGame
//Balance: 0 Ether
//Verification Date: 4/22/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.10;

contract EtherGame 
{
    uint[] a;
    function Test1(uint a) public constant returns(address)
    {
        return msg.sender;
    }
    function Test2(uint a) constant returns(address)
    {
        return msg.sender;
    }
    function Test3(uint b) public constant returns(uint)
    {
        return a.length;
    }
    function Test4(uint b) constant returns(uint)
    {
        return a.length;
    }
    function Test5(uint b) external constant returns(uint)
    {
        return a.length;
    }
    function Test6() constant returns(uint)
    {
        return a.length;
    }
    function Kill(uint a)
    {
        selfdestruct(msg.sender);
    }
}
