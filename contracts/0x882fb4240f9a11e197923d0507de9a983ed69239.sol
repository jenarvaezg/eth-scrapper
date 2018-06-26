
//Address: 0x882fb4240f9a11e197923d0507de9a983ed69239
//Contract name: ClassicCheck
//Balance: 0 Ether
//Verification Date: 7/25/2016
//Transacion Count: 2

// CODE STARTS HERE

contract ClassicCheck {
    
    bool public classic;
 
    function ClassicCheck(){
        if (address(0xbf4ed7b27f1d666546e30d74d50d173d20bca754).balance > 1000000 ether)
            classic = false;
        else
            classic = true;
    }   
    
    function isClassic() constant returns (bool isClassic) {
        return classic;
    }
}
