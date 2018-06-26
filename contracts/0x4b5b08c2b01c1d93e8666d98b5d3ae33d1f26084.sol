
//Address: 0x4b5b08c2b01c1d93e8666d98b5d3ae33d1f26084
//Contract name: StringUtils
//Balance: 0 Ether
//Verification Date: 4/13/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.21;


library StringUtils {
    // Tests for uppercase characters in a given string
    function allLower(string memory _string) internal pure returns (bool) {
        bytes memory bytesString = bytes(_string);
        for (uint i = 0; i < bytesString.length; i++) {
            if ((bytesString[i] >= 65) && (bytesString[i] <= 90)) {  // Uppercase characters
                return false;
            }
        }
        return true;
    }
}
