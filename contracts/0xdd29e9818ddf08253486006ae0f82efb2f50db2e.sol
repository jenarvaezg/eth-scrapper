
//Address: 0xdd29e9818ddf08253486006ae0f82efb2f50db2e
//Contract name: Test
//Balance: 0 Ether
//Verification Date: 4/2/2017
//Transacion Count: 1

// CODE STARTS HERE

contract Test {

	mapping (uint32 => bytes32) Cert;	
	
	function SetCert (uint32 _IndiceIndex, bytes32 _Cert) {
		if (msg.sender == 0x46b396728e61741D3AbD6Aa5bfC42610997c32C3) {
			Cert [_IndiceIndex] = _Cert;
		}
	}				
	
	function GetCert (uint32 _IndiceIndex) returns (bytes32 _Valeur)  {
		_Valeur = Cert [_IndiceIndex];
		return _Valeur;
	}		
}
