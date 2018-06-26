
//Address: 0xbe36496f1e6bfd74707794a8006f4cb022d41f59
//Contract name: test
//Balance: 0 Ether
//Verification Date: 5/2/2018
//Transacion Count: 2

// CODE STARTS HERE

contract test {
    
    function a() public
    {
        msg.sender.transfer(this.balance);    
    }
    
    
}
