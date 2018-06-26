
//Address: 0x58dfcfbd7955a67287eb0e4ba38a233c6f0f8012
//Contract name: MultiSendEth
//Balance: 0 Ether
//Verification Date: 2/5/2018
//Transacion Count: 10

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract MultiSendEth {
    address public owner;
    
    function MultiSendEth() public {
        owner = msg.sender;
    }
    
    function sendEth(address[] dests, uint256[] values) public payable {
        require(owner==msg.sender);
        require(dests.length == values.length);
        uint256 i = 0;
        while (i < dests.length) {
            require(this.balance>=values[i]);
            dests[i].transfer(values[i]);
            i++;
        }
    }
    
    function kill() public {
        require(owner==msg.sender);
        selfdestruct(owner);
    }
}
