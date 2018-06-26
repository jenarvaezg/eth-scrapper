
//Address: 0x9B55a8329203863BFB52A877C36996eB948ADc32
//Contract name: Upload
//Balance: 0 Ether
//Verification Date: 1/8/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract Upload{
    
    struct dataStruct{
        string nama;
        string alamat;
        string file;
    }
    
    mapping (uint => dataStruct) data;

    
    function addData(uint8 idData, string namaData, string alamatData, string fileData) public{
        data[idData].nama = namaData;
        data[idData].alamat = alamatData;
        data[idData].file = fileData;
    }
    
    function getDataById(uint8 idData) constant public returns (string, string, string){
        return (data[idData].nama, data[idData].alamat, data[idData].file);
    }
}
