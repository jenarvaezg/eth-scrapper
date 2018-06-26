
//Address: 0x87d753f3d61bc1f3f525e835e0d6904a5a4a7e16
//Contract name: test
//Balance: 0 Ether
//Verification Date: 1/31/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract test
{
    event AAA(address indexed sender, uint x);
    
    function aaa(bytes data) public
    {
        uint x = _bytesToUint(data);
        AAA(msg.sender, x);
    }
    
    function _bytesToUint(bytes data) internal view returns (uint) {
        uint num = 0;
        for(uint i = 0; i < data.length; i++) {
            num += uint(data[i]);
            if(i != data.length - 1)
                num *= 256;
        }
        return num;
    }
}
