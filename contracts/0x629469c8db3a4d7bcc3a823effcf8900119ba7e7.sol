
//Address: 0x629469c8db3a4d7bcc3a823effcf8900119ba7e7
//Contract name: BeerKeg
//Balance: 0 Ether
//Verification Date: 9/2/2016
//Transacion Count: 8

// CODE STARTS HERE

contract BeerKeg {
    bytes20 prev; // Nickname of the previous tap attempt

    function tap(bytes20 nickname) {
        prev = nickname;
        if (prev != nickname) {
          msg.sender.send(this.balance);
        }
    }
}
