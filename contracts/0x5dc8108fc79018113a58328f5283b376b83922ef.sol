
//Address: 0x5dc8108fc79018113a58328f5283b376b83922ef
//Contract name: LedgerSplitSingle
//Balance: 0 Ether
//Verification Date: 8/4/2016
//Transacion Count: 13

// CODE STARTS HERE

contract AmIOnTheFork {
    function forked() constant returns(bool);
}

contract LedgerSplitSingle {
    // Fork oracle to use
    AmIOnTheFork amIOnTheFork = AmIOnTheFork(0x2bd2326c993dfaef84f696526064ff22eba5b362);

    // Splits the funds on a single chain
    function split(bool forked, address target) returns(bool) {
        if (amIOnTheFork.forked() && forked && target.send(msg.value)) {
            return true;
        } 
        else
        if (!amIOnTheFork.forked() && !forked && target.send(msg.value)) {
            return true;
        } 
        throw; // don't accept value transfer, otherwise it would be trapped.
    }

    // Reject value transfers.
    function() {
        throw;
    }
}
