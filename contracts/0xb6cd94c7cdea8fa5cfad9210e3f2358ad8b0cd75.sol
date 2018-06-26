
//Address: 0xb6cd94c7cdea8fa5cfad9210e3f2358ad8b0cd75
//Contract name: BlockmaticsGraduationCertificate_02102017
//Balance: 0 Ether
//Verification Date: 2/7/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.2;
contract BlockmaticsGraduationCertificate_02102017 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;

    function publishGraduatingClass(string cert) {
        if (msg.sender != owner || certIssued)
            throw;
        certIssued = true;
        certificate = cert;
    }

    function showBlockmaticsCertificate() constant returns (string) {
        return certificate;
    }
}
