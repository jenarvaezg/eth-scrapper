
//Address: 0xfa1f4e5eb0cd3eb332c47268070630a20dd73986
//Contract name: BlockApps_Certificate_of_Completion
//Balance: 0 Ether
//Verification Date: 10/3/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity^0.4.8;
contract BlockApps_Certificate_of_Completion {
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
