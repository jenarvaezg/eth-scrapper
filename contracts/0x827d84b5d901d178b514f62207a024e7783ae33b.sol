
//Address: 0x827d84b5d901d178b514f62207a024e7783ae33b
//Contract name: Ownable
//Balance: 0 Ether
//Verification Date: 3/27/2018
//Transacion Count: 1

// CODE STARTS HERE

contract Ownable {

  address public owner;
  
  mapping(address => uint) public balances;

  function Ownable() public {
    owner = msg.sender;
  }


  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }
  

  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));      
    owner = newOwner;
  }

}
