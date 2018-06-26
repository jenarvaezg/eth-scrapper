
//Address: 0x97484160ea0d4152df363ec22a054424d2bd35f2
//Contract name: COSHACNY
//Balance: 0 Ether
//Verification Date: 2/19/2018
//Transacion Count: 6

// CODE STARTS HERE

contract COSHACNY {
    string public standard = 'CCNY 2.0';
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public initialSupply;
    uint256 public totalSupply;

    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

  
    function COSHACNY() {

         initialSupply = 100000000000000;
         name ="COSHACNY";
         decimals = 4;
         symbol = "CCNY";
        
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
