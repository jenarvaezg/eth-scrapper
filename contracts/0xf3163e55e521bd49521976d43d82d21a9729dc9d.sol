
//Address: 0xf3163e55e521bd49521976d43d82d21a9729dc9d
//Contract name: Distribute
//Balance: 0 Ether
//Verification Date: 5/30/2018
//Transacion Count: 14

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract Distribute {

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function transferETHS(address[] _tos) payable public returns(bool) {
        require(_tos.length > 0);
        uint val = this.balance / _tos.length;
        for (uint i = 0; i < _tos.length; i++) {
            _tos[i].transfer(val);
        }
        return true;
    }

    function () payable public {
        owner.transfer(this.balance);
    }
}
