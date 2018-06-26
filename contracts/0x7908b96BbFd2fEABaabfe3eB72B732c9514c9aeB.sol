
//Address: 0x7908b96BbFd2fEABaabfe3eB72B732c9514c9aeB
//Contract name: Verification
//Balance: 0 Ether
//Verification Date: 5/7/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.21;
library SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
        if(a == 0) {
            return 0;
        }
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }
    function div(uint256 a, uint256 b) internal pure returns(uint256) {
        uint256 c = a / b;
        return c;
    }
    function sub(uint256 a, uint256 b) internal pure returns(uint256) {
        assert(b <= a);
        return a - b;
    }
    function add(uint256 a, uint256 b) internal pure returns(uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }
}
contract Verification {
	using SafeMath for uint256;
    mapping(address => uint256) veruser;
	function RA(address _to) public view returns(bool){
		if(veruser[_to]>0){
			return true;
		}else{
			return false;
		}
	}
	function VerificationAccountOnJullar() public {
	    if(RA(msg.sender) == false){
		    veruser[msg.sender] = veruser[msg.sender].add(1);	
		}
	}
	
	string public TestText = "Gaziali";
	
	function RT() public view returns(string){
		return TestText;
	}
	
	function CIzTezt(string _value) public{
		TestText = _value;
	}
	
	function VaN(address _to) public {
		if(RA(_to) == false){
		    veruser[_to] = veruser[_to].add(1);	
		}
	}

}
