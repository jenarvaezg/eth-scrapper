
//Address: 0x91a5cb32d5a8ee437a69e362ed121af275c31adc
//Contract name: SaveString
//Balance: 0 Ether
//Verification Date: 6/23/2018
//Transacion Count: 7

// CODE STARTS HERE

contract SaveString{
    constructor() public {
    }
    mapping (uint=>string) data;
    function setStr(uint key, string value) public {
        data[key] = value;
    }
    function getStr(uint key) public constant returns(string){
        return data[key];
    }
}
