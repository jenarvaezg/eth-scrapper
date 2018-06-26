
//Address: 0x0427e00ed0cab57b7fbeab1d6213d3b8fe04f003
//Contract name: SAMPreSaleToken
//Balance: 0 Ether
//Verification Date: 1/25/2018
//Transacion Count: 7

// CODE STARTS HERE

contract Ownable {
  address public owner;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  function Ownable() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }
}

contract SAMPreSaleToken is Ownable {
    event Payment(address indexed investor, uint256 value);

    function () external payable {
        owner.transfer(msg.value);
        Payment(msg.sender, msg.value);
    }
}
