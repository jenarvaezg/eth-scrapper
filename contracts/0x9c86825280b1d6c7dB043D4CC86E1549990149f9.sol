
//Address: 0x9c86825280b1d6c7dB043D4CC86E1549990149f9
//Contract name: SimpleWallet
//Balance: 0.000002 Ether
//Verification Date: 10/30/2017
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.11;

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  function Ownable() {
    owner = msg.sender;
  }


  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }


  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) onlyOwner public {
    require(newOwner != address(0));
    OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}

contract SimpleWallet is Ownable {

    function () public payable {
    }

    function weiBalance() public constant returns(uint256) {
        return this.balance;
    }

    function claim(address destination) public onlyOwner {
        destination.transfer(this.balance);
    }

}
