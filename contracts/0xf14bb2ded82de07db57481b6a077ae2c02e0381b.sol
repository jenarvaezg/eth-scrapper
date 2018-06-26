
//Address: 0xf14bb2ded82de07db57481b6a077ae2c02e0381b
//Contract name: ethusdOracle
//Balance: 0 Ether
//Verification Date: 11/22/2017
//Transacion Count: 12

// CODE STARTS HERE

pragma solidity ^0.4.18;
// # US dollars per ETH
// around 4:15 PM EST
// 0.030312 implies $303.12 per ETH
contract ethusdOracle{
    
    address private owner;

    function ethusdOracle() 
        payable 
    {
        owner = msg.sender;
    }
    
    function updateETH() 
        payable 
        onlyOwner 
    {
        owner.transfer(this.balance-msg.value);
    }
    
    modifier 
        onlyOwner 
    {
        require(msg.sender == owner);
        _;
    }

}
