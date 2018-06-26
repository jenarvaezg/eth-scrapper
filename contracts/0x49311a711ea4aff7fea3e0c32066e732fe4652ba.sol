
//Address: 0x49311a711ea4aff7fea3e0c32066e732fe4652ba
//Contract name: Oath
//Balance: 0 Ether
//Verification Date: 9/20/2016
//Transacion Count: 2

// CODE STARTS HERE

contract Oath {
	mapping (address => bytes) public sig;

	event LogSignature(address indexed from, bytes version);

	function Oath() {
		if(msg.value > 0) { throw; }
	}

	function sign(bytes version) public {
		if(sig[msg.sender].length != 0 ) { throw; }
		if(msg.value > 0) { throw; }

		sig[msg.sender] = version;
		LogSignature(msg.sender, version);
	}

	function () { throw; }
}
