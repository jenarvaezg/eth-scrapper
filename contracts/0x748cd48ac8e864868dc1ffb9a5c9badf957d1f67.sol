
//Address: 0x748cd48ac8e864868dc1ffb9a5c9badf957d1f67
//Contract name: BlockmaticsGraduationCertificate_011218
//Balance: 0 Ether
//Verification Date: 1/12/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract BlockmaticsGraduationCertificate_011218 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;

    function publishGraduatingClass (string cert) public {
        assert (msg.sender == owner && !certIssued);

        certIssued = true;
        certificate = cert;
    }

    function showBlockmaticsCertificate() public constant returns (string) {
        return certificate;
    }
}
