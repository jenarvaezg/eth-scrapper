
//Address: 0xf497f6a2752a375472ef93d149c2cb42d5ffb608
//Contract name: BlockmaticsGraduationCertificate_102417
//Balance: 0 Ether
//Verification Date: 10/24/2017
//Transacion Count: 2

// CODE STARTS HERE

contract BlockmaticsGraduationCertificate_102417 {
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
