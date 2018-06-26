
//Address: 0x0b5dcd8cf2e32c2cebead397ea857d2e8547f297
//Contract name: OriginalMyDocAuthenticity
//Balance: 0 Ether
//Verification Date: 5/9/2017
//Transacion Count: 179

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract accessControlled {
    address public owner;
    mapping (address => bool) public registrator;
    
    function accessControlled() {
        registrator[msg.sender] = true;
        owner = msg.sender;
    }

    modifier onlyOwner {
        if ( msg.sender != owner ) throw;
        _;
    }

    modifier onlyRegistrator {
        if ( !registrator[msg.sender] ) throw;
        _;
    }
    
    function transferOwnership( address newOwner ) onlyOwner {
        owner = newOwner;
    }

    function updateRegistratorStatus( address registratorAddress, bool status ) onlyOwner {
        registrator[registratorAddress] = status;
    }

}


contract OriginalMyDocAuthenticity is accessControlled {
    
  mapping (string => uint) private authenticity;

  function storeAuthenticity(string sha256) onlyRegistrator {
    if (checkAuthenticity(sha256) == 0) {
        authenticity[sha256] = now;
    }   
  }

  function checkAuthenticity(string sha256) constant returns (uint) {
    return authenticity[sha256];
  }
}
