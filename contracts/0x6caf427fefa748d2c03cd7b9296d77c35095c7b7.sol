
//Address: 0x6caf427fefa748d2c03cd7b9296d77c35095c7b7
//Contract name: MultiTransfer
//Balance: 0 Ether
//Verification Date: 3/4/2018
//Transacion Count: 10

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract ERC20 {
    function transfer(address _recipient, uint256 amount) public;
}       
contract MultiTransfer {
    function multiTransfer(ERC20 token, address[] _addresses, uint256 amount) public {
        for (uint256 i = 0; i < _addresses.length; i++) {
            token.transfer(_addresses[i], amount);
        }
    }
}
