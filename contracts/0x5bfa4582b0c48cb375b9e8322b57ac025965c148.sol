
//Address: 0x5bfa4582b0c48cb375b9e8322b57ac025965c148
//Contract name: ArrayLib
//Balance: 0 Ether
//Verification Date: 5/3/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity 0.4.8;
library ArrayLib{
  function findAddress(address a, address[] storage arry) returns (int){
    for (uint i = 0 ; i < arry.length ; i++){
      if(arry[i] == a){return int(i);}
    }
    return -1;
  }
  function removeAddress(uint i, address[] storage arry){
    uint lengthMinusOne = arry.length - 1;
    arry[i] = arry[lengthMinusOne];
    delete arry[lengthMinusOne];
    arry.length = lengthMinusOne;
  }
}
