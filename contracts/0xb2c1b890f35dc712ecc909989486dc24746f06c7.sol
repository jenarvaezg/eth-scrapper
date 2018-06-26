
//Address: 0xb2c1b890f35dc712ecc909989486dc24746f06c7
//Contract name: proofofpower
//Balance: 0 Ether
//Verification Date: 6/20/2018
//Transacion Count: 1

// CODE STARTS HERE

contract proofofpower {
    
    bytes[6] public whitepaper;
    uint counter;
    function uploadData(bytes _data) public returns (uint){
        whitepaper[counter] = _data;
        counter++;
    }
}
