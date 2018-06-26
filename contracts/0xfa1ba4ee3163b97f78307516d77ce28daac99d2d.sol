
//Address: 0xfa1ba4ee3163b97f78307516d77ce28daac99d2d
//Contract name: GetDecimals
//Balance: 0 Ether
//Verification Date: 5/7/2018
//Transacion Count: 1

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
}
