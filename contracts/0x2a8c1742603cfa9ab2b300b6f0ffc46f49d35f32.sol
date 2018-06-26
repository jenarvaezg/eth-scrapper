
//Address: 0x2a8c1742603cfa9ab2b300b6f0ffc46f49d35f32
//Contract name: fmp
//Balance: 0 Ether
//Verification Date: 5/14/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.23;


contract destroyer {
    function destroy() public {
        selfdestruct(msg.sender);
    }
}


contract fmp is destroyer {
    uint256 public sameVar;

    function test(uint256 _sameVar) external {
        sameVar = _sameVar;
    }

}
