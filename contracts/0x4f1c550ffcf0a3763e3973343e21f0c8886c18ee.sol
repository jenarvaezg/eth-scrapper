
//Address: 0x4f1c550ffcf0a3763e3973343e21f0c8886c18ee
//Contract name: TeamTailsChoice
//Balance: 0 Ether
//Verification Date: 4/2/2018
//Transacion Count: 259

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract GameAbstraction {
   function sendBet(address sender, uint choice) payable public;
}

contract TeamChoice {

    address gameAddress;
    uint teamChoice;

    function TeamChoice(address _gameAddress, uint _teamChoice) public {
        gameAddress = _gameAddress;
        teamChoice = _teamChoice;
    }

    function fund() payable public {}

    function() payable public {
        GameAbstraction game = GameAbstraction(gameAddress);
        game.sendBet.value(msg.value)(msg.sender, teamChoice);
    }

}

contract TeamTailsChoice is TeamChoice {

    function TeamTailsChoice(address _gameAddress) TeamChoice(_gameAddress, 2) public {}

}
