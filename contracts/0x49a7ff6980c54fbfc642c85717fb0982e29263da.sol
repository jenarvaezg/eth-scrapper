
//Address: 0x49a7ff6980c54fbfc642c85717fb0982e29263da
//Contract name: GetTest
//Balance: 0 Ether
//Verification Date: 6/25/2018
//Transacion Count: 1

// CODE STARTS HERE

contract GetTest{
    uint a = 1;
    string b = "b";
    address c;
    constructor() public {
        c = msg.sender;
    }
    function getOne() public constant returns(uint) {
        return a;
    }
    function getTwo() public constant returns(uint, string){
        return (a, b);
    }
    function getThree() public constant returns (uint, string, address){
        return (a, b, c);
    }
}
