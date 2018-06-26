
//Address: 0xEC8f9A0De90487E7Aa172Fe5291fd19Ad7163aA1
//Contract name: BDSMAirdrop
//Balance: 0 Ether
//Verification Date: 11/20/2017
//Transacion Count: 25

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract token { 
    function transfer(address _to, uint256 _value);
    function balanceOf(address _owner) constant returns (uint256 balance);
}

contract BDSMAirdrop {
    
    token public sharesTokenAddress;
    uint256 public tokenFree = 0;
    address owner;
    uint256 public defValue = 5000000;

modifier onlyOwner() {
    require(msg.sender == owner);
    _;
}
    
function BDSMAirdrop(address _tokenAddress) {
    sharesTokenAddress = token(_tokenAddress);
    owner = msg.sender;
}

function multiSend(address[] _dests) onlyOwner public {
    
    uint256 i = 0;

    while (i < _dests.length) {
        sharesTokenAddress.transfer(_dests[i], defValue);
        i += 1;
    }
    
    tokenFree = sharesTokenAddress.balanceOf(this);
}

function tokensBack() onlyOwner public {    
    sharesTokenAddress.transfer(owner, sharesTokenAddress.balanceOf(this));
    tokenFree = 0;
}	

function changeAirdropValue(uint256 _value) onlyOwner public {
    defValue = _value;
}

}
