
//Address: 0x7945b57550d6a3deac9f976aea891c6f0323a103
//Contract name: BlockApps_Certificate_of_Completion_SF1018
//Balance: 0 Ether
//Verification Date: 10/19/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity^0.4.8;
contract BlockApps_Certificate_of_Completion_SF1018 {
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
