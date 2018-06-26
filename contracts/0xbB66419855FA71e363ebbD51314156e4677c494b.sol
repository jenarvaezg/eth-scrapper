
//Address: 0xbB66419855FA71e363ebbD51314156e4677c494b
//Contract name: MyToken
//Balance: 0 Ether
//Verification Date: 7/20/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.8;
contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }

contract MyToken {
    /* Public variables of the token */
    string public standard = 'Token 0.1';
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
}
