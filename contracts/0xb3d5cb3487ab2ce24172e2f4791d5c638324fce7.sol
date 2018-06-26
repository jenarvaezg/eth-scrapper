
//Address: 0xb3d5cb3487ab2ce24172e2f4791d5c638324fce7
//Contract name: FakeVote
//Balance: 0 Ether
//Verification Date: 5/10/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract FakeVote {
    
    // key-value store mapping account to the number of votes that it received
    mapping (address => uint256) public voteCount;
    
    // every account has a finite number of votes it can cast
    mapping (address => uint256) public alreadyUsedVotes;
    
    // every account can cast maximally 10 votes
    uint256 public maxNumVotesPerAccount = 10;
    
    // cast a vote for an account
    function voteFor(address participant, uint256 numVotes) public {

        // overflow protection
        require (voteCount[participant] < voteCount[participant] + numVotes);
        
        // do not allow self-votes
        require(participant != msg.sender);
        
        // do not allow voter to cast more votes than they should be able to
        require(alreadyUsedVotes[msg.sender] + numVotes <= maxNumVotesPerAccount);
        
        // increase vote count
        alreadyUsedVotes[msg.sender] += numVotes;
        
        // register votes;
        voteCount[participant] += numVotes;
    }
}
