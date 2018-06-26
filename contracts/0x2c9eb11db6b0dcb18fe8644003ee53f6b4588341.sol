
//Address: 0x2c9eb11db6b0dcb18fe8644003ee53f6b4588341
//Contract name: SimpleEthBank
//Balance: 0 Ether
//Verification Date: 3/3/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract SimpleEthBank {
    address public director;
    mapping (address => uint) accountBalances;
    mapping (address => bool) accountExists;

    event Deposit(address from, uint amount);
    event Withdrawal(address from, uint amount);
    event Transfer(address from, address to, uint amount);

    function SimpleEthBank() {
        director = msg.sender;
    }

    function() public payable {
        deposit();
    }

    function getBalanceOf(address addr) public constant returns(int) {
        if (accountExists[addr])
            return int(accountBalances[addr]);
        return -1;
    }

    function deposit() public payable {
        require(msg.value >= 0.5 ether);
        accountBalances[msg.sender] += msg.value;
        accountExists[msg.sender] = true;
        Deposit(msg.sender, msg.value);
    }
    function withdraw(uint amount) public {
        require(accountExists[msg.sender] && accountBalances[msg.sender] >= amount);
        accountBalances[msg.sender] -= amount;
        msg.sender.call.value(amount);
        Withdrawal(msg.sender, amount);
    }

    function transfer(address to, uint amount) public {
        require(accountExists[msg.sender] && accountExists[to] && accountBalances[msg.sender] >= amount);
        accountBalances[to] += amount;
        Transfer(msg.sender, to, amount);
    }

    function kill() public {
        require(msg.sender == director);
        selfdestruct(director);
    }
}
