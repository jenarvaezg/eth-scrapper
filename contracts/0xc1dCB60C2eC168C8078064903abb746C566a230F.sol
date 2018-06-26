
//Address: 0xc1dCB60C2eC168C8078064903abb746C566a230F
//Contract name: generic_holder
//Balance: 0 Ether
//Verification Date: 8/21/2017
//Transacion Count: 3

// CODE STARTS HERE

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
    
    function get_owner() constant returns (address) {
        return owner;
    }
}
