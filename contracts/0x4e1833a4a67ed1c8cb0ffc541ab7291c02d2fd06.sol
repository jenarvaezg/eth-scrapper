
//Address: 0x4e1833a4a67ed1c8cb0ffc541ab7291c02d2fd06
//Contract name: countGame
//Balance: 0 Ether
//Verification Date: 8/24/2017
//Transacion Count: 6

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract countGame {

    address public best_gamer;
    uint public count = 0;
    uint public endTime = 1504969200;
    
    function fund() payable {
        require(now <= endTime);
    }
    
    function (){
        require(now<=endTime && count<50);
        best_gamer = msg.sender;
        count++;
    }
    
    function endGame(){
        require(now>endTime || count == 50);
        best_gamer.transfer(this.balance);
    }
    
}
