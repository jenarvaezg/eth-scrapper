
//Address: 0xd532550b23b5a9ac9a230280518818f209db95d1
//Contract name: BlockmaticsGraduationCertificate_030518
//Balance: 0 Ether
//Verification Date: 3/5/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;
contract BlockmaticsGraduationCertificate_030518 {
    address public owner = msg.sender;
    string public certificate;
    bool public certIssued = false;

    function publishGraduatingClass (string cert) public {
        assert (msg.sender == owner && !certIssued);

        certIssued = true;
        certificate = cert;
    }
}
