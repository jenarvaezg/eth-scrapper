
//Address: 0xf603c4161c388b77249486f9cb6f1741abda6a9b
//Contract name: Burner
//Balance: 0 Ether
//Verification Date: 10/26/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.15;

contract Burner {

    function tokenFallback(address /* _from */, uint /* _value */, bytes /* _data */) returns (bool result) {
        return true;
    }

}
