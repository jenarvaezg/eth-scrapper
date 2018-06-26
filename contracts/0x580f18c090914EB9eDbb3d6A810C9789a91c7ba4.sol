
//Address: 0x580f18c090914EB9eDbb3d6A810C9789a91c7ba4
//Contract name: Caller
//Balance: 0 Ether
//Verification Date: 8/22/2017
//Transacion Count: 3

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
