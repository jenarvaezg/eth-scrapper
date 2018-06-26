
//Address: 0x793ae8c1b1a160bfc07bfb0d04f85eab1a71f4f2
//Contract name: Faucet
//Balance: 1 wei
//Verification Date: 5/14/2017
//Transacion Count: 2015

// CODE STARTS HERE

contract Faucet {
    uint256 sendAmount;
    mapping (address => uint) lastSent;
    uint blockLimit;
    function Faucet(){
        
	sendAmount = 10000000000000000;
        blockLimit = 5760;
    }
	
	function getWei() returns (bool){
	    if(lastSent[msg.sender]<(block.number-blockLimit)&&address(this).balance>sendAmount){
	        msg.sender.send(sendAmount);
	        lastSent[msg.sender] = block.number;
	        return true;
	    } else {
	        return false;
	    }
	}
	
}
