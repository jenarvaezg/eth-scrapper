
//Address: 0xe5677ff57460abd4a926a4c3f3790ff02b2dff1e
//Contract name: setNumRewardsForTMEUser
//Balance: 0 Ether
//Verification Date: 10/2/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.10;

// Last time we can help people who make this mistake.

contract setNumRewardsForTMEUser    {

function setNumRewardsForTMEUser()    {

elixor elixorContract=elixor(0x898bf39cd67658bd63577fb00a2a3571daecbc53);

elixorContract.manuallySetNumRewardsAvailableForChildAddress(0x909C10Ba205181D6c7D9F14fD304E2f7773975bb,10);

}
}

contract elixor  {

function manuallySetNumRewardsAvailableForChildAddress(address owner,uint256 numRewardsAvail);

}
