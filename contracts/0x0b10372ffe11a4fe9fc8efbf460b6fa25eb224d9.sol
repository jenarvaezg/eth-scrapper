
//Address: 0x0b10372ffe11a4fe9fc8efbf460b6fa25eb224d9
//Contract name: MultiTransfer
//Balance: 0 Ether
//Verification Date: 3/28/2018
//Transacion Count: 3

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
