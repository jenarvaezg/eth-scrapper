
//Address: 0xE7aA95217EB415B2c400c81e2B65359E720aB936
//Contract name: Switch
//Balance: 0.02 Ether
//Verification Date: 7/25/2016
//Transacion Count: 20

// CODE STARTS HERE

contract Switch {
    address constant theWithdraw = 0xbf4ed7b27f1d666546e30d74d50d173d20bca754;
    function Switch() {
        forked = theWithdraw.balance > 10000 ether;
    }
    
    function transferringETC(address to) {
        if (forked)
            throw;
        if (!to.send(msg.value))
            throw;
    }

    function transferringETH(address to) {
        if (!forked)
            throw;
        if (!to.send(msg.value))
            throw;
    }
    
    bool public forked;
}
