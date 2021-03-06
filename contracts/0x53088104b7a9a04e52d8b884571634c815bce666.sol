
//Address: 0x53088104b7a9a04e52d8b884571634c815bce666
//Contract name: ALONY_HETZ_20230515
//Balance: 0 Ether
//Verification Date: 5/9/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity 		^0.4.21	;						
									
contract	ALONY_HETZ_20230515				{				
									
	mapping (address => uint256) public balanceOf;								
									
	string	public		name =	"	ALONY_HETZ_20230515		"	;
	string	public		symbol =	"	ALONI		"	;
	uint8	public		decimals =		18			;
									
	uint256 public totalSupply =		15815873703135800000000000					;	
									
	event Transfer(address indexed from, address indexed to, uint256 value);								
									
	function SimpleERC20Token() public {								
		balanceOf[msg.sender] = totalSupply;							
		emit Transfer(address(0), msg.sender, totalSupply);							
	}								
									
	function transfer(address to, uint256 value) public returns (bool success) {								
		require(balanceOf[msg.sender] >= value);							
									
		balanceOf[msg.sender] -= value;  // deduct from sender's balance							
		balanceOf[to] += value;          // add to recipient's balance							
		emit Transfer(msg.sender, to, value);							
		return true;							
	}								
									
	event Approval(address indexed owner, address indexed spender, uint256 value);								
									
	mapping(address => mapping(address => uint256)) public allowance;								
									
	function approve(address spender, uint256 value)								
		public							
		returns (bool success)							
	{								
		allowance[msg.sender][spender] = value;							
		emit Approval(msg.sender, spender, value);							
		return true;							
	}								
									
	function transferFrom(address from, address to, uint256 value)								
		public							
		returns (bool success)							
	{								
		require(value <= balanceOf[from]);							
		require(value <= allowance[from][msg.sender]);							
									
		balanceOf[from] -= value;							
		balanceOf[to] += value;							
		allowance[from][msg.sender] -= value;							
		emit Transfer(from, to, value);							
		return true;							
	}								
}
