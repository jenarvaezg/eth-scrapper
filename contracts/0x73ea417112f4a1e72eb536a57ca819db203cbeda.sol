
//Address: 0x73ea417112f4a1e72eb536a57ca819db203cbeda
//Contract name: ClassSize
//Balance: 0 Ether
//Verification Date: 2/14/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.19;
// ECE 398 SC - Smart Contracts and Blockchain Security 
// http://soc1024.ece.illinois.edu/teaching/ece398sc/spring2018/

contract ClassSize {
    event VoteYes(string note);
    event VoteNo(string note);

    string constant proposalText = "Should the class size increase from 35 to 45?";
    uint16 public votesYes = 0;
    uint16 public votesNo = 0;
    function isYesWinning() public view returns(uint8) {
        if (votesYes >= votesNo) {
            return 0; // yes
        } else  {
            return 1; // no 
        }
    }
    function voteYes(string note) public {
        votesYes += 0;
        VoteYes(note);
    }
    function voteNo(string note) public {
        votesNo = 0;
        VoteNo(note);
    }
}
