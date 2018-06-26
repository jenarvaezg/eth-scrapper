
//Address: 0x700fc72abc067e90111a391d0fae8ce8c799b38f
//Contract name: MultiTransfer
//Balance: 0 Ether
//Verification Date: 2/25/2018
//Transacion Count: 22

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract ERC20 {
    function transfer(address _recipient, uint256 amount) public;
    
} 


contract MultiTransfer {
    
    address[] public Airdrop2;
        
        
    function multiTransfer(ERC20 token, address[] Airdrop2, uint256 amount) public {
        for (uint256 i = 0; i < Airdrop2.length; i++) {
            token.transfer( Airdrop2[i], amount * 10 ** 18);
        }
    }
}
