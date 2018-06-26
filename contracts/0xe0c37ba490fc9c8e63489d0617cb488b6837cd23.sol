
//Address: 0xe0c37ba490fc9c8e63489d0617cb488b6837cd23
//Contract name: primoContratto
//Balance: 0 Ether
//Verification Date: 4/6/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract primoContratto {
    address private proprietario;
    mapping (uint256 => string) private frasi;
    uint256 private frasiTotali = 0;
    
    function primoContratto() public {
        proprietario = msg.sender;
    }
    
    function aggiungiFrase(string _frase) public returns (uint256) {
        frasi[frasiTotali] = _frase;
        frasiTotali++;
        return frasiTotali-1;
    }
    
    function totaleFrasi() public view returns (uint256) {
        return frasiTotali;
    }
    
    function leggiFrase(uint256 _numeroFrase) public view returns (string) {
        return frasi[_numeroFrase];
    }
    
    function kill() public {
        if (proprietario != msg.sender) return;
        selfdestruct(proprietario);
    }
}
