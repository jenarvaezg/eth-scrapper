
//Address: 0xb69fba56b2e67e7dda61c8aa057886a8d1468575
//Contract name: Burner
//Balance: 0 Ether
//Verification Date: 5/13/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract Burner {
    uint256 public totalBurned;
    
    function Purge() public {
        // the caller of purge action receives 0.01% out of the
        // current balance.
        msg.sender.transfer(this.balance / 1000);
        assembly {
            mstore(0, 0x30ff)
            // transfer all funds to a new contract that will selfdestruct
            // and destroy all ether in the process.
            create(balance(address), 30, 2)
            pop
        }
    }
    
    function Burn() payable {
        totalBurned += msg.value;
    }
}
