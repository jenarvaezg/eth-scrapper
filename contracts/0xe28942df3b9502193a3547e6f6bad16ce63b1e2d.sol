
//Address: 0xe28942df3b9502193a3547e6f6bad16ce63b1e2d
//Contract name: Escrow
//Balance: 0 Ether
//Verification Date: 8/7/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract Escrow {
    mapping (address => uint) public balances;

    function deposit(address _recipient) payable {
        require(msg.value > 0);
        balances[_recipient] += msg.value;
    }

    function claim() {
        uint balance = balances[msg.sender];
        require(balance > 0);

        balances[msg.sender] = 0;
        bool claimed = msg.sender.call.value(balance)();

        require(claimed);
    }
}
