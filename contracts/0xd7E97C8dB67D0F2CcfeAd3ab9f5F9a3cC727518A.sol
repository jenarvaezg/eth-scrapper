
//Address: 0xd7E97C8dB67D0F2CcfeAd3ab9f5F9a3cC727518A
//Contract name: LndrJPY
//Balance: 0 Ether
//Verification Date: 2/26/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity 0.4.15;

contract LndrJPY {
    function allowTransaction(address creditor, address debtor, uint256 amount) public returns (bool) {
        return true;
    }
}
