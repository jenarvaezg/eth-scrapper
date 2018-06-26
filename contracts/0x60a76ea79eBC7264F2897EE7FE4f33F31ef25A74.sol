
//Address: 0x60a76ea79eBC7264F2897EE7FE4f33F31ef25A74
//Contract name: BlockmaticsGraduationCertificate
//Balance: 0 Ether
//Verification Date: 11/22/2016
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.2;
contract BlockmaticsGraduationCertificate {
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
