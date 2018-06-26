
//Address: 0xaf3c479013be6dfc7341cbdd657f9db430e1d047
//Contract name: FINGERToken
//Balance: 0 Ether
//Verification Date: 2/19/2018
//Transacion Count: 1

// CODE STARTS HERE

contract FINGERToken {
    string public standard = 'FINGER 2.0';
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public initialSupply;
    uint256 public totalSupply;

    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

  
    function FINGERToken() {

         initialSupply = 2100000000000000;
         name ="FINGERToken";
         decimals = 8;
         symbol = "FINGER";
        
        balanceOf[msg.sender] = initialSupply;
        totalSupply = initialSupply;
                                   
    }

    function transfer(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;
        if (balanceOf[_to] + _value < balanceOf[_to]) throw;
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
      
    }

    function () {
        throw;
    }
}
