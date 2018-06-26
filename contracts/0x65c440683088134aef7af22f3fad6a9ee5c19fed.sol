
//Address: 0x65c440683088134aef7af22f3fad6a9ee5c19fed
//Contract name: EtheremonTrade
//Balance: 0 Ether
//Verification Date: 1/6/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.16;

interface EtheremonTradeInterface {
    function isOnTrading(uint64 _objId) constant external returns(bool);
}

contract EtheremonTrade is EtheremonTradeInterface {
    function isOnTrading(uint64 _objId) constant external returns(bool) {
        return false;
    }
}
