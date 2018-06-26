
//Address: 0xbc4774e29941ae1df68c21fd95325dc25f3cdf77
//Contract name: Lime7
//Balance: 0.0006 Ether
//Verification Date: 12/10/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.0;

contract Lime7 {
    
    address public creatorad;

    function Lime7() {
        creatorad = msg.sender;
    }

    function feedme(uint256 amount) payable returns(bool success) {
        return true;
    }
    
    function payback(uint256 _amts) returns (string) {
        creatorad.transfer(_amts);
        return "good";
    }
    
    function get () constant returns (uint) {
        return this.balance;
    }

}
