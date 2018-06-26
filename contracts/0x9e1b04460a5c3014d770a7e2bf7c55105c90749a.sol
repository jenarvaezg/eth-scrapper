
//Address: 0x9e1b04460a5c3014d770a7e2bf7c55105c90749a
//Contract name: Osler_SmartContracts_Demo_Certificate_of_Attendance
//Balance: 0 Ether
//Verification Date: 11/21/2017
//Transacion Count: 7

// CODE STARTS HERE

// Note: 0.4.19 is a pre-release compiler, warning suggests use 0.4.18
// pragma solidity ^0.4.18;
contract Osler_SmartContracts_Demo_Certificate_of_Attendance {
  address public owner = msg.sender;
  string certificate;

  function publishLawyersInAttendance(string cert) {

    if (msg.sender !=owner){
      // return remainin gas back to  the caller
      revert();
    }
    certificate = cert;
  }
  function showCertificate() constant returns (string) {
    return certificate;
  }
}
