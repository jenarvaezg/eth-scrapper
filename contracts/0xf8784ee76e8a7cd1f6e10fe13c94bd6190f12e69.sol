
//Address: 0xf8784ee76e8a7cd1f6e10fe13c94bd6190f12e69
//Contract name: PONYSHAHA
//Balance: 0 Ether
//Verification Date: 2/19/2018
//Transacion Count: 1

// CODE STARTS HERE

contract PONYSHAHA {
    string public standard = 'PONYSH 2.0';
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public initialSupply;
    uint256 public totalSupply;

    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

  
    function PONYSHAHA() {

         initialSupply = 500000000000000;
         name ="PONYSHAHA";
         decimals = 4;
         symbol = "PONYSH";
        
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
