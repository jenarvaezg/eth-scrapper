
//Address: 0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5
//Contract name: GetDecimals
//Balance: 0 Ether
//Verification Date: 5/7/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.23;

interface ERC20 {
    function decimals() external view returns(uint);
}

contract GetDecimals {
    function getDecimals(ERC20 token) external view returns (uint){
        bytes memory data = abi.encodeWithSignature("decimals()");
        if(!address(token).call(data)) {
            // call failed
            return 18;
        }
        else {
            return token.decimals();
        }
    }
    
    function testRevert() public pure returns(string) {
        revert("ilan is the king");
        return "hello world";
    }
    
    function testRevertTx() public returns(string) {
        return testRevert();
    }    
}
