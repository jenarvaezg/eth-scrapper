
//Address: 0xa1089ac6c47575c3b23b92babd85d3c61329847d
//Contract name: Refund
//Balance: 0 Ether
//Verification Date: 4/27/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.16;
contract Refund {
    address owner = 0x0;
    function Refund() public payable {
        // 将部署合约的地址作为合约拥有者
        owner = msg.sender;
    }
    

}
