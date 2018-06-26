
//Address: 0x4bfad6fb23edcfa65bb8b8bf7a33499766404f52
//Contract name: GateProxy
//Balance: 0 Ether
//Verification Date: 3/24/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract theCyberGatekeeper {
  function enter(bytes32 _passcode, bytes8 _gateKey) public {}
}

contract GateProxy {
    function enter(bytes32 _passcode, bytes8 _gateKey, uint16 _gas) public {
        theCyberGatekeeper(0x44919b8026f38D70437A8eB3BE47B06aB1c3E4Bf).enter.gas(_gas)(_passcode, _gateKey);
    }
}
