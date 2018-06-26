
//Address: 0x9d3c57cd606096b5553283aba72c6d86c58f5d5a
//Contract name: crowdsale
//Balance: 0 Ether
//Verification Date: 3/7/2018
//Transacion Count: 100

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract crowdsale  {

mapping(address => bool) public whiteList;
event logWL(address wallet, uint256 currenttime);

    function addToWhiteList(address _wallet) public  {
        whiteList[_wallet] = true;
        logWL (_wallet, now);
    }
}
