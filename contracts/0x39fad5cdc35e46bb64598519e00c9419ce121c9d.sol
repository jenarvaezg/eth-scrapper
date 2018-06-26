
//Address: 0x39fad5cdc35e46bb64598519e00c9419ce121c9d
//Contract name: Bulletin
//Balance: 0 Ether
//Verification Date: 8/9/2017
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.13;
contract Bulletin {
    
    string public message = "";
    address public owner;
    
    function Bulletin(){
        owner = msg.sender;
    }
    
    function setMessage(string _message){
        require(msg.sender == owner);
        message = _message;
    }
}
