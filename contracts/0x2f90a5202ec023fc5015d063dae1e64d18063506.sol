
//Address: 0x2f90a5202ec023fc5015d063dae1e64d18063506
//Contract name: TowncrierTest
//Balance: 0 Ether
//Verification Date: 2/5/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract TowncrierTest {
    event LogTowncrierCallback(uint64 requestId, uint64 error, bytes32 respData);
    
    function towncrierCallback(uint64 requestId, uint64 error, bytes32 respData) public {
        LogTowncrierCallback(requestId, error, respData);
    }
}
