
//Address: 0x6e38a457c722c6011b2dfa06d49240e797844d66
//Contract name: TerraNullius
//Balance: 0 Ether
//Verification Date: 8/17/2017
//Transacion Count: 27

// CODE STARTS HERE

contract TerraNullius {
  struct Claim { address claimant; string message; uint block_number; }
  Claim[] public claims;

  function claim(string message) {
    uint index = claims.length;
    claims.length++;
    claims[index] = Claim(msg.sender, message, block.number);
  }

  function number_of_claims() returns(uint result) {
    return claims.length;
  }
}
