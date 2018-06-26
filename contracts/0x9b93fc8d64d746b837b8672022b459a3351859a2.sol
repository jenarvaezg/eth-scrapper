
//Address: 0x9b93fc8d64d746b837b8672022b459a3351859a2
//Contract name: Money
//Balance: 0 Ether
//Verification Date: 4/17/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Money {
    
    address public creator;
    address public buyer;
    
    function Money(address _buyer) public payable {
        creator = msg.sender;
        buyer = _buyer;
    }
    
    function ChangeBuyer(address _buyer) public {
         require(msg.sender==creator);
         buyer = _buyer;
    }
    
    // 0x92d282c1
    function Send() public {
        require(msg.sender==buyer);
        buyer.transfer(this.balance);
    }
    
    function Refund() public {
        require(msg.sender==creator);
        creator.transfer(this.balance);
    }
    
    function() payable {
        
    }
    
    function Delete() {
        require(msg.sender==creator);
        selfdestruct(creator);
    }
    
}
