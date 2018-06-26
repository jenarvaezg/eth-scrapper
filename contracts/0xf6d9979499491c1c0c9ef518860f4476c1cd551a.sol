
//Address: 0xf6d9979499491c1c0c9ef518860f4476c1cd551a
//Contract name: EtherandomProxy
//Balance: 0 Ether
//Verification Date: 8/10/2016
//Transacion Count: 3

// CODE STARTS HERE

contract EtherandomProxy {
  address owner;
  address etherandom;
  address callback;

  function EtherandomProxy() {
    owner = msg.sender;
  }

  modifier onlyAdmin {
    if (msg.sender != owner) throw;
    _
  }

  function getContractAddress() public constant returns (address _etherandom) {
    return etherandom;
  }
  
  function setContractAddress(address newEtherandom) onlyAdmin {
    etherandom = newEtherandom;
  }

  function getCallbackAddress() public constant returns (address _callback) {
    return callback;
  }
  
  function setCallbackAddress(address newCallback) onlyAdmin {
    callback = newCallback;
  }
  
  function kill() onlyAdmin {
    selfdestruct(owner);
  }
}
