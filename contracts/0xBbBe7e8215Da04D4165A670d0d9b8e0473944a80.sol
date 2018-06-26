
//Address: 0xBbBe7e8215Da04D4165A670d0d9b8e0473944a80
//Contract name: Registra1000
//Balance: 0 Ether
//Verification Date: 2/7/2018
//Transacion Count: 195

// CODE STARTS HERE

pragma solidity ^0.4.18;

contract Registra1000 {

   struct Arquivo {
       bytes shacode;
   }

   bytes[] arquivos;
   
   function Registra() public {
       arquivos.length = 1;
   }

   function setArquivo(bytes shacode) public {
       arquivos.push(shacode);
   }
   
 
}
