
//Address: 0xd6ec04c0f9587cb822c315f662954af8c2174d66
//Contract name: Store
//Balance: 0 Ether
//Verification Date: 10/7/2016
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.2;

contract Store {
    address[] owners;
    mapping(address => uint) ownerBalances;

    function Store(address[] _owners) {
        owners = _owners;
    }
    
    function deposit() payable {
        uint ownerShare = msg.value / owners.length;
        ownerBalances[owners[0]] += msg.value % owners.length;
        
        for (uint i = 0; i < owners.length; i++) {
            ownerBalances[owners[i]] += ownerShare;
        }
    }
    
    function payout() returns (uint) {
        uint amount = ownerBalances[msg.sender];
        ownerBalances[msg.sender] = 0;

        if (msg.sender.send(amount)) {
            return amount;
        } else {
            ownerBalances[msg.sender] = amount;
            return 0;
        }
    }

    
    
    
}
