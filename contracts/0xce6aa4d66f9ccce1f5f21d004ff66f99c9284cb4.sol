
//Address: 0xce6aa4d66f9ccce1f5f21d004ff66f99c9284cb4
//Contract name: s_Form004
//Balance: 0 Ether
//Verification Date: 10/31/2017
//Transacion Count: 7

// CODE STARTS HERE

pragma solidity ^0.4.13;
 
contract s_Form004 {
    
    mapping (bytes32 => string) data;
    
    address owner;
    
    function s_Form004() {
        owner = msg.sender;
    }
    
    function setDataColla_AA_01(string key, string value) {
        require(msg.sender == owner);
        data[sha3(key)] = value;
    }
    
    function getDataColla_AA_01(string key) constant returns(string) {
        return data[sha3(key)];
    }

    function setDataColla_AA_02(string key, string value) {
        require(msg.sender == owner);
        data[sha3(key)] = value;
    }
    
    function getDataColla_AA_02(string key) constant returns(string) {
        return data[sha3(key)];
    }
    
    function setDataColla_AB_01(string key, string value) {
        require(msg.sender == owner);
        data[sha3(key)] = value;
    }
    
    function getDataColla_AB_01(string key) constant returns(string) {
        return data[sha3(key)];
    }    

    function setDataColla_AB_02(string key, string value) {
        require(msg.sender == owner);
        data[sha3(key)] = value;
    }
    
    function getDataColla_AB_02(string key) constant returns(string) {
        return data[sha3(key)];
    } 

/*
0xCe6Aa4d66f9CCCE1f5F21D004Ff66F99c9284Cb4
Liechtensteinischer Sozialversicherung -Rentenversicherung AAD (association autonome et décentralisée/distribuée)
*/
}
