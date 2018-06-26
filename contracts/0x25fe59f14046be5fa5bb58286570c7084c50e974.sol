
//Address: 0x25fe59f14046be5fa5bb58286570c7084c50e974
//Contract name: BlockApps_Certificate_090817
//Balance: 0 Ether
//Verification Date: 9/11/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity^0.4.8;
contract BlockApps_Certificate_090817 {
    address public owner = msg.sender;
    string certificate;
    bool certIssued = false;

    function publishGraduatingClass(string cert) {
        if (msg.sender != owner || certIssued)
            throw;
        certIssued = true;
        certificate = cert;
    }

    function showCertificate() constant returns (string) {
        return certificate;
    }
}
