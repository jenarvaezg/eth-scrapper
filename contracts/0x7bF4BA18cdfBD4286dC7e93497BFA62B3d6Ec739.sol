
//Address: 0x7bF4BA18cdfBD4286dC7e93497BFA62B3d6Ec739
//Contract name: Switch
//Balance: 0.00001 Ether
//Verification Date: 4/5/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.8;
contract Switch 
{
    bool public state=false;
    uint256 public blinc_block;
    uint256 public on_block;
    address public owner;

    function Switch(){
        owner=msg.sender;
        on_block==block.number;
        blinc_block=block.number;
    }
    function blinc() payable {
        if(msg.value>0)blinc_block=block.number;
    }
    function () payable {
        if(msg.value>0)on_block=block.number;
    }
    function kill() {
    if (msg.sender==owner) selfdestruct(owner);
    }
}
