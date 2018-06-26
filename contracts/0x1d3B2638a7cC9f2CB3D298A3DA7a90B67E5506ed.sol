
//Address: 0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed
//Contract name: OraclizeAddrResolver
//Balance: 0 Ether
//Verification Date: 5/18/2018
//Transacion Count: 5

// CODE STARTS HERE

/*
  Copyright (c) 2015-2016 Oraclize SRL
  Copyright (c) 2016 Oraclize LTD
*/

contract OraclizeAddrResolver {

    address public addr;

    address owner;

    function OraclizeAddrResolver(){
        owner = msg.sender;
    }

    function changeOwner(address newowner){
        if (msg.sender != owner) throw;
        owner = newowner;
    }

    function getAddress() returns (address oaddr){
        return addr;
    }

    function setAddr(address newaddr){
        if (msg.sender != owner) throw;
        addr = newaddr;
    }

}
