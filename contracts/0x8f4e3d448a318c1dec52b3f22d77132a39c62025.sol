
//Address: 0x8f4e3d448a318c1dec52b3f22d77132a39c62025
//Contract name: ForceSend
//Balance: 0 Ether
//Verification Date: 9/14/2016
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.1;

contract ForceSendHelper
{
    function ForceSendHelper(address _to) payable
    {
        selfdestruct(_to);
    }
}

contract ForceSend
{
    function send(address _to) payable
    {
        if (_to == 0x0) {
            throw;
        }
        ForceSendHelper s = (new ForceSendHelper).value(msg.value)(_to);
        if (address(s) == 0x0) {
            throw;
        }
    }
    
    function withdraw(address _to)
    {
        if (_to == 0x0) {
            throw;
        }
        if (!_to.send(this.balance)) {
            throw;
        }
    }
}
