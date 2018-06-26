
//Address: 0x073e957bc883693f15ecb14bfced3e8ffc8654c5
//Contract name: Escrow
//Balance: 0 Ether
//Verification Date: 1/23/2017
//Transacion Count: 4

// CODE STARTS HERE

contract Escrow {
    address buyer;
    address seller;
    address arbitrator;

    function Escrow() payable {
       seller = 0x5ed8cee6b63b1c6afce3ad7c92f4fd7e1b8fad9f;
       buyer = msg.sender;
       arbitrator = 0xabad6ec946eff02b22e4050b3209da87380b3cbd;
    }
    
    function finalize() {
        if (msg.sender == buyer || msg.sender == arbitrator)
            seller.send(this.balance);
    }
    
    function refund() {
        if (msg.sender == seller || msg.sender == arbitrator)
            buyer.send(this.balance);
    }
}
