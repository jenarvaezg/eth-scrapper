
//Address: 0xa0ecd8ef29750e7c3501c5568fdd9f4f5bcfe3d9
//Contract name: BokkyPooBahTrickyStickLeaderboard
//Balance: 0 Ether
//Verification Date: 10/30/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.17;

// ----------------------------------------------------------------------------
// BokkyPooBah's Tricky Stick Leaderboard (Cancun)
//
// Deployed to 0xA0ecd8eF29750E7c3501C5568FDD9F4f5bCfe3d9
//
// Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2017. The MIT Licence.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// BokkyPooBah's Tricky Stick Leaderboard (Cancun)
// ----------------------------------------------------------------------------
contract BokkyPooBahTrickyStickLeaderboard  {

    // ------------------------------------------------------------------------
    // Event
    // ------------------------------------------------------------------------
    event Solved(address indexed account, string name, string timeToSolve);


    // ------------------------------------------------------------------------
    // Self-report the time it took you to solve (or not)
    // ------------------------------------------------------------------------
    function solved(string name, string timeToSolve) public {
        Solved(msg.sender, name, timeToSolve);
    }


    // ------------------------------------------------------------------------
    // Don't accept ethers - no payable modifier
    // ------------------------------------------------------------------------
    function () public {
    }
}
