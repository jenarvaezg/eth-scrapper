
//Address: 0x8cb1b775002033246029d1b5beae89466f3b4585
//Contract name: SmartDeposit
//Balance: 0 Ether
//Verification Date: 6/23/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract SmartDeposit {
    function SmartDeposit() {

    }

    event Received(address from, bytes user_id, uint value);

    function() payable {
        if (msg.value > 0 && msg.data.length == 4) {
            Received(msg.sender, msg.data, msg.value);
            m_account.transfer(msg.value);
        } else throw;
    }

    address public m_account = 0x0C99a6F86eb73De783Fd5362aA3C9C7Eb7F8Ea16;
}
