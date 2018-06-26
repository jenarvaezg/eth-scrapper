
//Address: 0xc02df3e98cbc4416e5471f51ea57ce8845a844cd
//Contract name: calc
//Balance: 0 Ether
//Verification Date: 11/10/2017
//Transacion Count: 1

// CODE STARTS HERE

contract calc { 
    event ret(uint r);
    function multiply(uint a, uint b) returns(uint d) { 
        uint res = a * b;
        ret (res);
        return res; 
    } 
}
