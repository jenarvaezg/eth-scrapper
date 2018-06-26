
//Address: 0x1d6671bad68e2ac15f72502f8a6c3bab42ccafd6
//Contract name: ProofOfExistence
//Balance: 0 Ether
//Verification Date: 4/4/2017
//Transacion Count: 3

// CODE STARTS HERE

contract ProofOfExistence {

  mapping (string => uint) private proofs;

  function notarize(string sha256) {

    bytes memory b_hash = bytes(sha256);
    
    if ( b_hash.length == 64 ){
      if ( proofs[sha256] != 0 ){
        proofs[sha256] = block.timestamp;
      }
    }
  }
  
  function verify(string sha256) constant returns (uint) {
    return proofs[sha256];
  }
  
}
