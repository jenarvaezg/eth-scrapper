
//Address: 0x103ba001256259fc25176edcba67a27b6663ee5a
//Contract name: StoppableAirdrop
//Balance: 0 Ether
//Verification Date: 2/16/2018
//Transacion Count: 87

// CODE STARTS HERE

pragma solidity 0.4.18;




contract MiniMeToken {
function generateTokens(address to, uint256 amount) public returns (bool);
function changeController(address controller) public;
}




contract StoppableAirdrop {
MiniMeToken public airdropToken;
address public owner;




bool public stopped;




mapping (address => bool) dropped;




function StoppableAirdrop(MiniMeToken _airdropToken, address _owner) {
airdropToken = _airdropToken;
owner = _owner;
stopped = true;
}




function () external {
drop();
}




function drop() public {
require(!dropped[msg.sender]);
require(!stopped);
dropped[msg.sender] = true;




require(airdropToken.generateTokens(msg.sender, 10 ** 18));
}




function setStopped(bool _stop) public {
require(msg.sender == owner);
stopped = _stop;
}




function claimController() public {
require(msg.sender == owner);
airdropToken.changeController(owner);
}
}
