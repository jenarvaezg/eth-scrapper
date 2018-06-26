
//Address: 0x9c00dae00e62abeebc6496c1c41e4f63816ffa9f
//Contract name: BlockmaticsGraduationCertificate_022218
//Balance: 0 Ether
//Verification Date: 2/22/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.5;
contract BlockmaticsGraduationCertificate_022218 {
    address public owner = msg.sender;
    string public certificate;
    bool public certIssued = false;

    function publishGraduatingClass(string cert) public {
        require (msg.sender == owner && !certIssued);
        certIssued = true;
        certificate = cert;
    }
}
