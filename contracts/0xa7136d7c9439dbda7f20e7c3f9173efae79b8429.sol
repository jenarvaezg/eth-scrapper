
//Address: 0xa7136d7c9439dbda7f20e7c3f9173efae79b8429
//Contract name: DummyReceiver
//Balance: 0 Ether
//Verification Date: 10/2/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity >=0.4.10;

// Dummy Receiver to satisfy Sales contract need for 3 receivers
contract DummyReceiver {

    // callback from sale contract when the sale begins
    function start() {
    }

    // callback from sale contract when sale ends
    function end() {
    }
}
