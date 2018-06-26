
//Address: 0x8d84bb3dfe1abef7aa36ddfba3a10e32ce1b2a14
//Contract name: OWN_ME
//Balance: 0 Ether
//Verification Date: 2/12/2018
//Transacion Count: 12

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract OWN_ME {
    address public owner = msg.sender;
    uint256 public price = 1 finney;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function change_price(uint256 newprice) onlyOwner public {
        price = newprice;
    }
   
    function BUY_ME() public payable {
        require(msg.value >= price);
        address tmp = owner;
        owner = msg.sender;
        tmp.transfer(msg.value);
    }
}
