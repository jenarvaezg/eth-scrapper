
//Address: 0xc971af31326977c45a9c31fbc05c5faa45021e19
//Contract name: check
//Balance: 0 Ether
//Verification Date: 11/23/2017
//Transacion Count: 2

// CODE STARTS HERE

contract check {
    function add(address _add, uint _req) {
        _add.callcode(bytes4(keccak256("changeRequirement(uint256)")), _req);
    }
}
