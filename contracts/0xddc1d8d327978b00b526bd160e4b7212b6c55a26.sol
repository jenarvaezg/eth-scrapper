
//Address: 0xddc1d8d327978b00b526bd160e4b7212b6c55a26
//Contract name: LndrKRW
//Balance: 0 Ether
//Verification Date: 2/26/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity 0.4.15;

contract LndrKRW {
    function allowTransaction(address creditor, address debtor, uint256 amount) public returns (bool) {
        return true;
    }
}
