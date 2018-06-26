
//Address: 0xbc0f2fd3a3f5a625e23ec5dc07b49cf8ae1dac2b
//Contract name: BlockmaticsGraduationCertificate_081817
//Balance: 0 Ether
//Verification Date: 8/18/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract BlockmaticsGraduationCertificate_081817 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;

    function publishGraduatingClass(string cert) {
        if (msg.sender != owner || certIssued)
            revert();
        certIssued = true;
        certificate = cert;
    }

    function showBlockmaticsCertificate() constant returns (string) {
        return certificate;
    }
}
