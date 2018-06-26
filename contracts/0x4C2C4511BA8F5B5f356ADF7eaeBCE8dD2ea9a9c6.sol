
//Address: 0x4C2C4511BA8F5B5f356ADF7eaeBCE8dD2ea9a9c6
//Contract name: BlockmaticsGraduationCertificate
//Balance: 0 Ether
//Verification Date: 11/19/2016
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract BlockmaticsGraduationCertificate {
    address public owner = msg.sender;
    string certificate;


    function publishGraduatingClass(string cert) {
        if (msg.sender != owner)
            throw;
        certificate = cert;
    }


    function showBlockmaticsCertificate() constant returns (string) {
        return certificate;
    }
}
