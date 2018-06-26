
//Address: 0xc3626b5f7f7fa8a864441b7ed9bfb1ccdd720286
//Contract name: RtBCoin
//Balance: 0 Ether
//Verification Date: 8/5/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract RtBCoin {
    string public name;
    string public symbol;
    uint256 public totalSuplay;
    address public owner;
    uint cost = 5 finney;
    mapping (address => uint256) public balanceOf;
    
    function RtBCoin(){
        balanceOf[this]=1000000000;
        totalSuplay=1000000000;
        name="RtBCoin";
        symbol="RtB";
        owner=msg.sender;
    }
    function () payable{
        uint amount = msg.value / cost;
        if(balanceOf[this]<amount)throw;
        balanceOf[msg.sender]+=amount;
        balanceOf[this] -= amount;
    }
    function getEther(){
        if(msg.sender!=owner)throw;
        owner.transfer(this.balance);
    }
}
