
//Address: 0xb671c3883307cf05bb3dff77a9754e87b4347195
//Contract name: HFConditionalTransfer
//Balance: 1.128 Ether
//Verification Date: 7/17/2016
//Transacion Count: 796

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
