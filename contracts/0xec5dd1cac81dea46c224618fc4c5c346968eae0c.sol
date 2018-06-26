
//Address: 0xec5dd1cac81dea46c224618fc4c5c346968eae0c
//Contract name: BlockmaticsGraduationCertificate_051918
//Balance: 0 Ether
//Verification Date: 5/19/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract BlockmaticsGraduationCertificate_051918 {
    address public owner = msg.sender;
    string public certificate;
    bool public certIssued = false;

    function publishGraduatingClass (string cert) public {
        assert (msg.sender == owner && !certIssued);

        certIssued = true;
        certificate = cert;
    }
}
