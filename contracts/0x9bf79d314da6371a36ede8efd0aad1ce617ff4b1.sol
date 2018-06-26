
//Address: 0x9bf79d314da6371a36ede8efd0aad1ce617ff4b1
//Contract name: TakeMyEther
//Balance: 0 Ether
//Verification Date: 6/24/2017
//Transacion Count: 1

// CODE STARTS HERE

contract TakeMyEther {
    function() {
        selfdestruct(msg.sender);
    }
}
