
//Address: 0x3559ffe4ad79d4627b1e404706574aa44705d26b
//Contract name: EthernalLoveParent
//Balance: 0 Ether
//Verification Date: 3/13/2018
//Transacion Count: 2

// CODE STARTS HERE

contract DigitalPadlock {
    string public message;

    function DigitalPadlock(string _m) public {
        message = _m;
    }
}

contract EthernalLoveParent {
  address owner;
  address[] public padlocks;
  event LogCreatedValentine(address padlock); // maybe listen for events

  function EthernalLoveParent() public {
    owner = msg.sender;
  }

  function createPadlock(string _m) public {
    DigitalPadlock d = new DigitalPadlock(_m);
    LogCreatedValentine(d); // emit an event
    padlocks.push(d); 
  }
}
