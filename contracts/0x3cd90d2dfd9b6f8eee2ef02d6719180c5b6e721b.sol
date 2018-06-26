
//Address: 0x3cd90d2dfd9b6f8eee2ef02d6719180c5b6e721b
//Contract name: UploadIMG
//Balance: 0 Ether
//Verification Date: 3/13/2018
//Transacion Count: 10

// CODE STARTS HERE

pragma solidity ^0.4.20;

// Upload URL contract for Item Market game. Everyone can upload URLs for all ID's (cannot be prevented on blockchain) 
// However, UI will only check owner data.

contract UploadIMG{
    
    // Addres => ID => URL
    mapping(address => mapping(uint256 => string)) public Data;
    
    function UploadIMG() public {
 
    }
    // This can be changed!
    function UploadURL(uint256 ID, string URL) public {
        Data[msg.sender][ID] = URL;
    }

    function GetURL(address ADDR, uint256 ID) public returns (string) {
        return Data[ADDR][ID];
    }
    
    // If someone sends eth, send back immediately.
    function() payable public{
        if (msg.value > 0){
            msg.sender.transfer(msg.value);
        }
    }
}
