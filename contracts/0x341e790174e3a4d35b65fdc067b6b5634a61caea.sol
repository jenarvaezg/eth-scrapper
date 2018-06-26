
//Address: 0x341e790174e3a4d35b65fdc067b6b5634a61caea
//Contract name: ReplaySafeSplit
//Balance: 0 Ether
//Verification Date: 7/20/2016
//Transacion Count: 43

// CODE STARTS HERE

contract AmIOnTheFork {
    function forked() constant returns(bool);
}

/**
 * 
 */
contract ReplaySafeSplit {
    // Fork oracle to use
    AmIOnTheFork amIOnTheFork = AmIOnTheFork(0x2bd2326c993dfaef84f696526064ff22eba5b362);

    // Splits the funds into 2 addresses
    function split(address targetFork, address targetNoFork) returns(bool) {
        if (amIOnTheFork.forked() && targetFork.send(msg.value)) {
            return true;
        } else if (!amIOnTheFork.forked() && targetNoFork.send(msg.value)) {
            return true;
        }
        return false;
    }

    // Reject value transfers.
    function() {
        throw;
    }
}
