
//Address: 0x4b9b2dd0a6265828ffb710738ea91da6a9d2c609
//Contract name: BlockApps_Certificate_of_Completion_NYC_121517
//Balance: 0 Ether
//Verification Date: 12/15/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity^0.4.8;

contract BlockApps_Certificate_of_Completion_NYC_121517 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;
    
    function publishGraduatingClass(string cert) {
        if (msg.sender != owner || certIssued)
            throw;
        certIssued = true;
        certificate = cert;
    }

    function showCertificate() constant returns (string) {
        return certificate;
    }
}
