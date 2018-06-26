
//Address: 0x59c9d35c264beefe98380a559e289d4fc98753e7
//Contract name: BlockApps_Blockmatics_Certificate_12142017
//Balance: 0 Ether
//Verification Date: 12/14/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.6;

contract BlockApps_Blockmatics_Certificate_12142017 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;

    function publishGraduatingClass(string cert) public {
        if (msg.sender != owner || certIssued)
            revert();
        certIssued = true;
        certificate = cert;
    }

    function showCertificate() constant public returns (string)  {
        return certificate;
    }
}
