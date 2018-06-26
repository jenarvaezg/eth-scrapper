
//Address: 0x71caff5fd6facbaf1863426ac05b3703636a9bb9
//Contract name: Vote
//Balance: 0 Ether
//Verification Date: 1/20/2017
//Transacion Count: 27

// CODE STARTS HERE

contract Vote {
    event LogVote(address indexed addr);

    function() {
        LogVote(msg.sender);

        if (msg.value > 0) {
            if (!msg.sender.send(msg.value)) {
                throw;
            }
        }
    }
}
