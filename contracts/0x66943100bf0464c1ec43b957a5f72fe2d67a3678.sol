
//Address: 0x66943100bf0464c1ec43b957a5f72fe2d67a3678
//Contract name: Escrow
//Balance: 0 Ether
//Verification Date: 8/30/2016
//Transacion Count: 2

// CODE STARTS HERE

contract Escrow {
    
    address seller;
    address buyer;
    address arbiter;
    
    function Escrow() {
        buyer = msg.sender;
        seller = 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6;
        arbiter = 0xd8da6bf26964af9d7eed9e03e53415d37aa96045;
    }
    
    function finalize() {
        if (msg.sender != buyer && msg.sender != arbiter) throw;
        seller.send(this.balance);
    }
    
    function refund() {
        if (msg.sender != seller && msg.sender != arbiter) throw;
        buyer.send(this.balance);        
    }
}
