
//Address: 0x70e531091d82e183f7246012d1566c3fe1315625
//Contract name: SendToMany
//Balance: 0.0002 Ether
//Verification Date: 10/27/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract SendToMany
{
    address owner;
    
    address[] public recipients;
    
    function SendToMany() public
    {
        owner = msg.sender;
    }
    
    function setRecipients(address[] newRecipientsList) public
    {
        require(msg.sender == owner);
        
        recipients = newRecipientsList;
    }
    
    function addRecipient(address newRecipient) public
    {
        recipients.push(newRecipient);
    }
    
    function sendToAll(uint256 amountPerRecipient) payable public
    {
        for (uint256 i=0; i<recipients.length; i++)
        {
            recipients[i].transfer(amountPerRecipient);
        }
    }
}
