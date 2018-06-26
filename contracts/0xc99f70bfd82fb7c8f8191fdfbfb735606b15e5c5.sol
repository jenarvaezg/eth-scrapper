
//Address: 0xc99f70bfd82fb7c8f8191fdfbfb735606b15e5c5
//Contract name: WyvernAtomicizer
//Balance: 0 Ether
//Verification Date: 3/8/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;

library WyvernAtomicizer {

    function atomicize (address[] addrs, uint[] values, uint[] calldataLengths, bytes calldatas)
        public
    {
        require(addrs.length == values.length && addrs.length == calldataLengths.length);

        uint j = 0;
        for (uint i = 0; i < addrs.length; i++) {
            bytes memory calldata = new bytes(calldataLengths[i]);
            for (uint k = 0; k < calldataLengths[i]; k++) {
                calldata[k] = calldatas[j];
                j++;
            }
            require(addrs[i].call.value(values[i])(calldata));
        }
    }

}
