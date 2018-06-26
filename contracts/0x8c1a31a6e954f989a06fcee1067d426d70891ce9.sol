
//Address: 0x8c1a31a6e954f989a06fcee1067d426d70891ce9
//Contract name: SmartVerifying
//Balance: 0 Ether
//Verification Date: 4/6/2017
//Transacion Count: 22

// CODE STARTS HERE

contract SmartVerifying{
    function SmartVerifying(){

    }

    function() payable
    {
        if(msg.sender.send(msg.value)==false) throw;
    }
}
