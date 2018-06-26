
//Address: 0x1c9207daaa1da36ba34b7e1bc83810dd7390d7c9
//Contract name: ProofOfExistence
//Balance: 0 Ether
//Verification Date: 3/30/2017
//Transacion Count: 6

// CODE STARTS HERE

contract ProofOfExistence {
  mapping (string => uint) private proofs;

  function storeProof(string sha256) {
    proofs[sha256] = block.timestamp;
  }

  function notarize(string sha256) {
    storeProof(sha256);
  }
  

  function checkDocument(string sha256) constant returns (uint) {
    return proofs[sha256];
  }
  
}
