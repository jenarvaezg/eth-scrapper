
//Address: 0x86ba01f38a92ed31b83565395841887d0c467b3d
//Contract name: IndirectBuyRSC
//Balance: 0 Ether
//Verification Date: 9/13/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract RoseCoin {
    // What is the balance of a particular account?
    function balanceOf(address _owner) constant returns (uint256);
    // Send _value amount of tokens to address _to
    function transfer(address _to, uint256 _value) returns (bool success);
    // Buy RoseCoin by sending Ether    
    function buy() payable returns (uint256 amount);
}

contract IndirectBuyRSC{
    RoseCoin constant coin = RoseCoin(0x5c457eA26f82Df1FcA1a8844804a7A89F56dd5e5);
    function buy(address _receiver) payable{
        coin.buy.value(msg.value)();
        coin.transfer(_receiver, coin.balanceOf(this));
    }
}