
//Address: 0x45c8f09e0b20e1d68a12a03899bca2c8e70111de
//Contract name: Eth
//Balance: 0 Ether
//Verification Date: 5/30/2017
//Transacion Count: 3

// CODE STARTS HERE

contract Eth {
    address owner;
    bytes message;

    function Eth() {
        owner = msg.sender;
    }

    // sendaccount
    function getAll() payable returns (bool) {
       if (msg.sender == owner) {
           msg.sender.transfer(this.balance);
           return true;
       }

       return false;
    }

    function getMessage() constant returns (bytes) {
        return message;
    }

    function () payable {

        message = msg.data;
    }
}
