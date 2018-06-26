
//Address: 0xa86e4aeddf4336940e17d524000f1a0cef7c1fe9
//Contract name: TestRevert
//Balance: 0 Ether
//Verification Date: 3/1/2018
//Transacion Count: 3

// CODE STARTS HERE

contract TestRevert {
    
    function revertMe() {
        require(false);
    }
    
    function throwMe() {
        throw;
    }
}
