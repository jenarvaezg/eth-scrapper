
//Address: 0xac09587d186d70d93dd9b16328c2e4fa845cc9cf
//Contract name: CrowdsaleMinterDummy
//Balance: 0 Ether
//Verification Date: 7/3/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract CrowdsaleMinterDummy {
  
    function withdrawFundsAndStartToken() external
    {
        FundsWithdrawnAndTokenStareted(msg.sender);
    }
    event FundsWithdrawnAndTokenStareted(address msgSender);

    function mintAllBonuses() external
    {
        BonusesAllMinted(msg.sender);
    }
    event BonusesAllMinted(address msgSender);

    function abort() external
    {
        Aborted(msg.sender);
    }
    event Aborted(address msgSender);
}
