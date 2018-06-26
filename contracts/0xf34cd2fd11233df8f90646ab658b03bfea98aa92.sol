
//Address: 0xf34cd2fd11233df8f90646ab658b03bfea98aa92
//Contract name: SaveData
//Balance: 0 Ether
//Verification Date: 5/25/2018
//Transacion Count: 235

// CODE STARTS HERE

pragma solidity ^0.4.21;
  
contract SaveData {
    mapping (string => string) sign;
    address public owner;
    event SetString(string key,string types);
    function SaveData() public {
        owner = msg.sender;
    }
    function setstring(string key,string md5) public returns(string){
        sign[key]=md5;
        return sign[key];
    }

    function getString(string key) public view returns(string){
        return sign[key];
    }
}
