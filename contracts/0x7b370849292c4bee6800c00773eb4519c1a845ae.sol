
//Address: 0x7b370849292c4bee6800c00773eb4519c1a845ae
//Contract name: btcusdOracle
//Balance: 0 Ether
//Verification Date: 11/22/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.18;
// # US dollars per BTC
// around 4:15 PM EST
// 0.0732412 implies $7324.12 per BTC
contract btcusdOracle{
    
    address private owner;

    function btcusdOracle() 
        payable 
    {
        owner = msg.sender;
    }
    
    function ubdateBTC() 
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
