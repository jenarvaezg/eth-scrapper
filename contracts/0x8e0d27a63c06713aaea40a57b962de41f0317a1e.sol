
//Address: 0x8e0d27a63c06713aaea40a57b962de41f0317a1e
//Contract name: SaveInt
//Balance: 0 Ether
//Verification Date: 6/23/2018
//Transacion Count: 1

// CODE STARTS HERE

contract SaveInt{
    constructor() public {
    }
    mapping (string=>uint) data;
    function setStr(string key, uint value) public {
        data[key] = value;
    }
    function getStr(string key) public constant returns(uint){
        return data[key];
    }
}
