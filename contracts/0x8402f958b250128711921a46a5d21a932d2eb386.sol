
//Address: 0x8402f958b250128711921a46a5d21a932d2eb386
//Contract name: Incrementer
//Balance: 0 Ether
//Verification Date: 7/12/2017
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract Incrementer {

    event LogWinner(address winner, uint amount);
    
    uint c = 0;

    function ticket() payable {
        
        uint ethrebuts = msg.value;
        if (ethrebuts != 10) {
            throw;
        }
        c++;
        
        if (c==3) {
            LogWinner(msg.sender,this.balance);
            msg.sender.transfer(this.balance);
            c=0;
        }
    }
}
