
//Address: 0xb0365d6e0af52bf71f18069c16b9d1f6b935d39b
//Contract name: SaveData
//Balance: 0 Ether
//Verification Date: 6/21/2018
//Transacion Count: 25

// CODE STARTS HERE

contract SaveData{
    constructor() public {
    }
    mapping (string=>string) data;
    function setStr(string key, string value) public payable {
        data[key] = value;
    }
    function getStr(string key) public constant returns(string){
        return data[key];
    }
}
