
//Address: 0x6817178368e30a0cd92662442a966b428e8f2d49
//Contract name: GateProxy
//Balance: 0 Ether
//Verification Date: 3/24/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract theCyberGatekeeper {
  function enter(bytes32 _passcode, bytes8 _gateKey) public {}
}

contract GateProxy {
    function enter(bytes32 _passcode, bytes8 _gateKey) public {
        theCyberGatekeeper(0x44919b8026f38D70437A8eB3BE47B06aB1c3E4Bf).enter.gas(81910)(_passcode, _gateKey);
    }
}
