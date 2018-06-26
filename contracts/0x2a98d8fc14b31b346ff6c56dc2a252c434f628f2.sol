
//Address: 0x2a98d8fc14b31b346ff6c56dc2a252c434f628f2
//Contract name: PoormansHoneyPot
//Balance: 0.002 Ether
//Verification Date: 4/25/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.23;

contract PoormansHoneyPot {
    mapping (address => uint) public balances;

    constructor() public payable {
        store();
    }

    function store() public payable {
        balances[msg.sender] = msg.value;
    }

    function withdraw() public{
        assert (msg.sender.call.value(balances[msg.sender])()) ;
        balances[msg.sender] = 0;
    }


}
