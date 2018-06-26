
//Address: 0x67685918e81814a87e1eeef82f4c9083cfc10c94
//Contract name: BlockApps_Certificate_of_Completion_NYC_112817
//Balance: 0 Ether
//Verification Date: 11/29/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity^0.4.8;

contract BlockApps_Certificate_of_Completion_NYC_112817 {
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
