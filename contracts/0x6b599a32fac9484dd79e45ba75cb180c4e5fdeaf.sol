
//Address: 0x6b599a32fac9484dd79e45ba75cb180c4e5fdeaf
//Contract name: Deposit
//Balance: 0 Ether
//Verification Date: 6/23/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract Deposit {
    /* Constructor */
    function Deposit() {

    }

    event Received(address from, address to, uint value);

    function() payable {
        if (msg.value > 0) {
            Received(msg.sender, this, msg.value);
            m_account.transfer(msg.value);
        }
    }

    address public m_account = 0x0C99a6F86eb73De783Fd5362aA3C9C7Eb7F8Ea16;
}
