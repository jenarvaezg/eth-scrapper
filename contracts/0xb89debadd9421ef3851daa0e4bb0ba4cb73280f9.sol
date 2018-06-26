
//Address: 0xb89debadd9421ef3851daa0e4bb0ba4cb73280f9
//Contract name: Blockmatics_Certificate_12142017
//Balance: 0 Ether
//Verification Date: 12/14/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.6;

contract Blockmatics_Certificate_12142017 {
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
