
//Address: 0x5fa498b70de14fa9f7b2a51e973c65346a31b8cc
//Contract name: Admin
//Balance: 0 Ether
//Verification Date: 1/13/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity 0.4.19;

contract Admin {

    address public owner;
    mapping(address => bool) public AdminList;
    
    function Test() public returns (uint256 _balance) {
            
        address sender = msg.sender;
        return sender.balance;
        
    }
    
      function TestX() public {
         
         owner = msg.sender;
        
    }
    
}
