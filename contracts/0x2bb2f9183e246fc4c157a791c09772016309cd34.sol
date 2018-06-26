
//Address: 0x2bb2f9183e246fc4c157a791c09772016309cd34
//Contract name: Zhtong
//Balance: 0 Ether
//Verification Date: 1/29/2018
//Transacion Count: 1

// CODE STARTS HERE

contract Zhtong {
    address public owner;
      uint private result;
      function Set(){
          owner = msg.sender;
      }
      function assign(uint x, uint y) returns (uint){
          result = x + y;
      }
}
