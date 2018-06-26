
//Address: 0xf2570186500a46986f3139f65afedc2afe4f445d
//Contract name: RealOldFuckMaker
//Balance: 0 Ether
//Verification Date: 9/1/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract RealOldFuckMaker {
    address fuck = 0xc63e7b1DEcE63A77eD7E4Aeef5efb3b05C81438D;
    
    // this can make OVER 9,000 OLD FUCKS
    // (just pass in 129)
    function makeOldFucks(uint32 number) {
        uint32 i;
        for (i = 0; i < number; i++) {
            fuck.call(bytes4(sha3("giveBlockReward()")));
        }
    }
}
