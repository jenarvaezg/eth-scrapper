
//Address: 0x47078e95d238108b5ee30d4806025b5aab6dac83
//Contract name: BraggerContract
//Balance: 0.0001290001 Ether
//Verification Date: 12/10/2017
//Transacion Count: 12

// CODE STARTS HERE

pragma solidity ^0.4.11;

// Brag about how much ethereum is in your address
// Visit cryptobragging.com to learn more
contract BraggerContract {
    // The address that paid the most
    address public richest;
    
    // The string that will be displayed on cryptobragging.com
    string public displayString;
    
    // The highest payment so far
    uint public highestBalance;
    
    address owner;

    function BraggerContract() public payable {
        owner = msg.sender;
        highestBalance = 0;
    }

    function becomeRichest(string newString) public payable {
        // Ensure the sender is paying more than the highest so far.
        require(msg.value > highestBalance);
        
        // Cap the string length for the website.
        require(bytes(newString).length < 500);
        
        highestBalance = msg.value;
        richest = msg.sender;
        displayString = newString;
    }
    
    function withdrawBalance() public {
        owner.transfer(this.balance);
    }
}
