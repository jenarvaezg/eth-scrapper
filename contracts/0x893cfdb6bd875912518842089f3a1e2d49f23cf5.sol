
//Address: 0x893cfdb6bd875912518842089f3a1e2d49f23cf5
//Contract name: closeEXORImports
//Balance: 0 Ether
//Verification Date: 10/3/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.10;

// After NovaExchange balance recovery, all dev privileges revoked. Contract is now fully decentralized.

contract closeEXORImports   {

function closeEXORImports()    {

elixor elixorContract=elixor(0x898bf39cd67658bd63577fb00a2a3571daecbc53);

elixorContract.lockGenesisImports();
elixorContract.lockBalanceChanges();
elixorContract.prohibitFreeze();

}
}

contract elixor  {

function lockGenesisImports() public;
function lockBalanceChanges();
function prohibitFreeze();

}
