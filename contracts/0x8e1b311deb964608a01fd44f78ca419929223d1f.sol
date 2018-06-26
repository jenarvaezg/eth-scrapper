
//Address: 0x8e1b311deb964608a01fd44f78ca419929223d1f
//Contract name: Skel
//Balance: 0 Ether
//Verification Date: 12/21/2017
//Transacion Count: 1

// CODE STARTS HERE

contract Skel {
  string public name;
  address public owner;
  function Skel() public {
      name = "test";
      owner = msg.sender;
  }
  modifier onlyowner {
      require(msg.sender == owner);
      _;
  }
function emptyTo(address addr) onlyowner public {
    addr.transfer(address(this).balance);
}
}
