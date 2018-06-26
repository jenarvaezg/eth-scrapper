
//Address: 0x488690160a80702e6b8e47c7d62ec2779eb5f240
//Contract name: SimpleStorage
//Balance: 0 Ether
//Verification Date: 9/9/2016
//Transacion Count: 2

// CODE STARTS HERE

contract SimpleStorage {
    uint storedData;
    address storedAddress;
    
    event flag(uint val, address addr);

    function set(uint x, address y) {
        storedData = x;
        storedAddress = y;
    }

    function get() constant returns (uint retVal, address retAddr) {
        return (storedData, storedAddress);
        flag(storedData, storedAddress);

    }
}
