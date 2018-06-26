
//Address: 0x1536f307ff0a68e1356507ddccdfa2922a7ff48d
//Contract name: WhiteListUser
//Balance: 0 Ether
//Verification Date: 6/30/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract I_WhiteList {
    function contains(address) public returns(bool);
}

contract WhiteListUser {

    function assert(I_WhiteList whiteList, address addr) external {
      assert (whiteList.contains(addr));
    }

}
