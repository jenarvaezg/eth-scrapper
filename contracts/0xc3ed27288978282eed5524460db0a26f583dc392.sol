
//Address: 0xc3ed27288978282eed5524460db0a26f583dc392
//Contract name: DiscordPool
//Balance: 0 Ether
//Verification Date: 4/27/2018
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.22;


contract Ownable {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract DiscordPool is Ownable {
    uint public raised;
    bool public active = true;
    mapping(address => uint) public balances;
    event Deposit(address indexed beneficiary, uint value);
    event Withdraw(address indexed beneficiary, uint value);

    function () external payable whenActive {
        raised += msg.value;
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }
    
    function finalize() external onlyOwner {
        active = false;
    }
    
    function withdraw(address beneficiary) external onlyOwner whenEnded {
        uint balance = address(this).balance;
        beneficiary.transfer(balance);
        emit Withdraw(beneficiary, balance);
    }

    modifier whenEnded() {
        require(!active);
        _;
    }
    
    modifier whenActive() {
        require(active);
        _;
    }
}
