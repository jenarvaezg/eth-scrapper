
//Address: 0x8c43c4d4cfef47429f17eb4ecd7b090ec0e976af
//Contract name: MineContractAddress
//Balance: 0 Ether
//Verification Date: 6/12/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract MineContractAddress {
    function mine(
        address _account, 
        uint _nonce
    ) public pure returns(address _contract) {
        if (_nonce == 0) _nonce = 128;
        _contract = address(keccak256(bytes2(0xd694), _account, byte(_nonce)));
    }
}
