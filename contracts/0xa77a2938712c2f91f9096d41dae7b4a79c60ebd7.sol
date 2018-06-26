
//Address: 0xa77a2938712c2f91f9096d41dae7b4a79c60ebd7
//Contract name: ctf
//Balance: 0 Ether
//Verification Date: 11/12/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract ctf {
    address public owner;
    // uint public secret;
    uint private flag; //no public, it's a secret;

    /* CONSTRUCTOR */
    function ctf(uint _flag) public { 
      owner = msg.sender;
      flag = _flag;
    }

    /* let me change the secret just in case I want to */
    function change_flag(uint newflag) public {
      require(msg.sender == owner); //make sure it's me
      flag = newflag;
    }

    function() payable public {
      return;
    }
    // don't need it anymore
    function kill(address _to) public {
      require(msg.sender == owner);
      selfdestruct(_to);
    }
}
