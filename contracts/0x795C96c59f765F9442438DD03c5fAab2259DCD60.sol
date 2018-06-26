
//Address: 0x795C96c59f765F9442438DD03c5fAab2259DCD60
//Contract name: Emitter
//Balance: 0 Ether
//Verification Date: 8/22/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity >=0.4.13;

contract Emitter {
    event Emit(uint x);
    function emit(uint x) {
        Emit(x);
    }
}

contract Caller {
    address emitter;
    function setEmitter(address e) {
        if (emitter == 0x0) {
            emitter = e;
        }
    }
    function callEmitter(uint x) {
        Emitter(emitter).emit(x);
    }
}
