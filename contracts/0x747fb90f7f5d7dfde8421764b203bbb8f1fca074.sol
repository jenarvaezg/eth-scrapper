
//Address: 0x747fb90f7f5d7dfde8421764b203bbb8f1fca074
//Contract name: TranferInTwoPart
//Balance: 0 Ether
//Verification Date: 10/5/2017
//Transacion Count: 22

// CODE STARTS HERE

contract TranferInTwoPart {
    function transfer(address _to) payable {
        uint half = msg.value / 2;
        uint halfRemain = msg.value - half;
        
        _to.send(half);
        _to.send(halfRemain);
    }
    // Forward value transfers.
    function() {       
       throw;
    }
}
