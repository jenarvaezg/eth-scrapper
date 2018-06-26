
//Address: 0xd2bc942e03dca509ab897896bd5e1ad6bdda97d7
//Contract name: Test
//Balance: 0 Ether
//Verification Date: 4/19/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.2;
contract Test {
    function uintToBytes(uint v) constant returns (bytes32 ret) {
        if (v == 0) {
            ret = '0';
        }
        else {
            while (v > 0) {
                ret = bytes32(uint(ret) / (2 ** 8));
                ret |= bytes32(((v % 10) + 48) * 2 ** (8 * 31));
                v /= 10;
            }
        }
        return ret;
    }

}
