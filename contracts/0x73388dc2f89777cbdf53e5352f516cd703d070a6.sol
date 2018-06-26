
//Address: 0x73388dc2f89777cbdf53e5352f516cd703d070a6
//Contract name: SimplePrize
//Balance: 0.02 Ether
//Verification Date: 1/7/2018
//Transacion Count: 1

// CODE STARTS HERE

contract SimplePrize {
    bytes32 public constant salt = bytes32(987463829);
    bytes32 public commitment;

    function SimplePrize(bytes32 _commitment) public payable {
        commitment = _commitment;   
    }

    function createCommitment(uint answer) 
      public pure returns (bytes32) {
        return keccak256(salt, answer);
    }

    function guess (uint answer) public {
        require(createCommitment(answer) == commitment);
        msg.sender.transfer(this.balance);
    }

    function () public payable {}
}
