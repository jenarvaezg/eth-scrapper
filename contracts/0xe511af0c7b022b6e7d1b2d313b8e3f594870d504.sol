
//Address: 0xe511af0c7b022b6e7d1b2d313b8e3f594870d504
//Contract name: forwardEth
//Balance: 0 Ether
//Verification Date: 6/18/2018
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract forwardEth {
    address public owner;
    address public destination;
    
    constructor() public {
        owner = msg.sender;
        destination = msg.sender;
    }
    
    modifier ownerOnly() {
        require(msg.sender==owner);
        _;
    }
    
    // 1. transfer ownership //
    function setNewOwner(address _newOwner) public ownerOnly {
        owner = _newOwner;
    }
    
    // 2. owner can change destination
    function setReceiver(address _newReceiver) public ownerOnly {
        destination = _newReceiver;
    }
    
    // fallback function tigered, when contract gets ETH
    function() payable public {
        destination.transfer(msg.value);
    }
    
    // destroy contract, returns remain of funds to owner 
    function _destroyContract() public ownerOnly {
        selfdestruct(destination);
    }
}
