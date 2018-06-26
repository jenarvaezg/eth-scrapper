
//Address: 0xa05dde51cf9a133db33beb613337e68e8d779b7e
//Contract name: closeImports
//Balance: 0 Ether
//Verification Date: 10/3/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.10;

// All contract balance imports closed. Contract is now fully decentralized.

contract closeImports   {

function closeImports()    {

elix elixirContract=elix(0xc8C6A31A4A806d3710A7B38b7B296D2fABCCDBA8);
elixirContract.lockBalanceChanges();

}
}

contract elix  {
function lockBalanceChanges();
}
