
//Address: 0xc1d2d28cdfba332c9654b4b400d84e5a301e0208
//Contract name: ParaTransfer
//Balance: 0 Ether
//Verification Date: 4/7/2018
//Transacion Count: 25

// CODE STARTS HERE

pragma solidity ^0.4.4;


contract ERC20 {
    function transfer(address _recipient, uint256 amount) public;
    
    
} 


contract ParaTransfer {
    address public parachute;
    
    function ParaTransfer() public {
        parachute = msg.sender;
    }    
        
    function multiTransfer(ERC20 token, address[] Airdrop, uint256 amount) public {
        require(msg.sender == parachute);
        
        for (uint256 i = 0; i < Airdrop.length; i++) {
            token.transfer( Airdrop[i], amount * 10 ** 18);
        }
    }
}
