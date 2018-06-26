
//Address: 0xf428b0641a4c1ce1d2f360e46180015a5bcc2346
//Contract name: HFConditionalTransfer
//Balance: 0 Ether
//Verification Date: 7/24/2016
//Transacion Count: 7

// CODE STARTS HERE

contract HFConditionalTransfer {
    function transferIfHF(address to) {
        if (address(0xbf4ed7b27f1d666546e30d74d50d173d20bca754).balance > 1000000 ether)
            to.send(msg.value);
        else
            msg.sender.send(msg.value);
    }
    function transferIfNoHF(address to) {
        if (address(0xbf4ed7b27f1d666546e30d74d50d173d20bca754).balance <= 1000000 ether)
            to.send(msg.value);
        else
            msg.sender.send(msg.value);
    }
}
