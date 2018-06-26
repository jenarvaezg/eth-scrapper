
//Address: 0x0f63aad989e402e06f361e7df51116732d3efa1b
//Contract name: Storage
//Balance: 0 Ether
//Verification Date: 12/30/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.16;

contract Storage {

   address owner = 0xb697a802a93c9ef958ec93ddf4d5800c5a01f7d4; // <= define the address you control (have the private key to)

   bytes32[] storageContainer;

   function pushByte(bytes32 b) {
      storageContainer.push(b);
   }

}
