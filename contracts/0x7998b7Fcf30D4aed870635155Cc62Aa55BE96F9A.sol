
//Address: 0x7998b7Fcf30D4aed870635155Cc62Aa55BE96F9A
//Contract name: generic_holder
//Balance: 0 Ether
//Verification Date: 8/21/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.15;

contract generic_holder {
    address owner;
    
    modifier onlyowner {
        if (owner == msg.sender)
            _;
    }
    
    // constructor
    function generic_holder() {
        owner = msg.sender;
    }
    
    function change_owner(address new_owner) external onlyowner {
        owner = new_owner;
    }
    
    function execute(address _to, uint _value, bytes _data) external onlyowner returns (bool){
        return _to.call.value(_value)(_data);
    }

    function send(address _to, uint _value) external onlyowner returns (bool){
        return _to.send(_value); 
    }
    
    function get_owner() constant returns (address) {
        return owner;
    }
    
}
