
//Address: 0x8a973E5FF530F552044DFa15C87489Be5415E431
//Contract name: WTCTOKEN
//Balance: 0 Ether
//Verification Date: 1/27/2018
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.11;

contract WTCTOKEN {
    /* variables */
    string public standard = 'WTCTOKEN';
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public initialSupply;
    uint256 public totalSupply;

    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

  
    /* Initializes contract with initial supply tokens to the creator of the contract */
    function WTCTOKEN() {

         initialSupply = 100000000000000;
         name ="WTCTOKEN";
        decimals = 6;
         symbol = "WTCT";
        
        balanceOf[msg.sender] = initialSupply;             
        totalSupply = initialSupply;                         
                                   
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;           
        if (balanceOf[_to] + _value < balanceOf[_to]) throw; 
        balanceOf[msg.sender] -= _value;                     
        balanceOf[_to] += _value;                            
      
    }

   

    

   

    /* This unnamed function is called whenever someone tries to send ether to it */
    function () {
        throw;     // Prevents accidental sending of ether
    }
}
