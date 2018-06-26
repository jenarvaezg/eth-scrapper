
//Address: 0x770adb04ea5dcd4bdb4b44a28fa830d19a570f5d
//Contract name: Uint8Lib
//Balance: 0 Ether
//Verification Date: 9/29/2017
//Transacion Count: 1

// CODE STARTS HERE

/// @title Token Register Contract
/// @author Kongliang Zhong - <kongliang@loopring.org>,
/// @author Daniel Wang - <daniel@loopring.org>.
library Uint8Lib {
    function xorReduce(
        uint8[] arr,
        uint    len
        )
        public
        constant
        returns (uint8 res) {

        res = arr[0];
        for (uint i = 1; i < len; i++) {
           res ^= arr[i];
        }
    }
}
