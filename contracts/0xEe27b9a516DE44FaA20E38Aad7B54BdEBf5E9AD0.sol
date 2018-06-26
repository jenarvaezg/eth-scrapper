
//Address: 0xEe27b9a516DE44FaA20E38Aad7B54BdEBf5E9AD0
//Contract name: BlockApps_Certificate_of_Completion_112817
//Balance: 0 Ether
//Verification Date: 11/29/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity^0.4.8;

contract BlockApps_Certificate_of_Completion_112817 {
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
