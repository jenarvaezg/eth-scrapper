
//Address: 0xa10ef63266c7841c81ea631166864bffe1e5b287
//Contract name: BlockApps_Blockmatics_Certificate_081117
//Balance: 0 Ether
//Verification Date: 8/12/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.6;

contract BlockApps_Blockmatics_Certificate_081117 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;

    function publishGraduatingClass(string cert) {
        if (msg.sender != owner || certIssued)
            revert();
        certIssued = true;
        certificate = cert;
    }

    function showCertificate() constant returns (string) {
        return certificate;
    }
}
