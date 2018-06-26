
//Address: 0x77ce1c41db1baf27614a03b64c0b4995535d9179
//Contract name: WinnerTakesAll
//Balance: 0 Ether
//Verification Date: 2/11/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.4;

contract WinnerTakesAll { 
    uint8 public currentPlayers;
    uint8 constant public requiredPlayers = 6;
    uint256 constant public requiredBet = 0.005*1e18; // Only acceptable bet is 0.005 ether
    address[requiredPlayers] public players;
    event roundEvent(
        address[requiredPlayers] roundPlayers,
        bytes32[requiredPlayers] roundScores
    );
    
    function SixPlayerRoulette() public {
        currentPlayers = 0;
    }
    
    function () public payable correctBet {
        currentPlayers += 1;
        players[currentPlayers-1] = msg.sender;
        if (currentPlayers == requiredPlayers) {
            bytes32 best = 0;
            bytes32[requiredPlayers] memory scores;
            address winner = 0;
            for (uint x = 0 ; x < requiredPlayers ; x++) {
                scores[x] = keccak256(now,players[x]);
                if (scores[x] > best ){
                    best = scores[x];
                    winner = players[x];
                }
            }
            winner.transfer(this.balance);
            currentPlayers = 0;
            roundEvent(players,scores);
        }
    }
    
    modifier correctBet {
        require(msg.value == requiredBet);
        _;
    }
}
