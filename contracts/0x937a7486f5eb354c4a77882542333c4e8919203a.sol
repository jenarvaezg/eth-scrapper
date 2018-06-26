
//Address: 0x937a7486f5eb354c4a77882542333c4e8919203a
//Contract name: SendToMany
//Balance: 0 Ether
//Verification Date: 10/27/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract SendToMany
{
    address[] public recipients;
    
    function SendToMany(address[] _recipients) public
    {
        recipients = _recipients;
    }
    
    function() payable public
    {
        uint256 amountOfRecipients = recipients.length;
        for (uint256 i=0; i<amountOfRecipients; i++)
        {
            recipients[i].transfer(msg.value / amountOfRecipients);
        }
    }
}
