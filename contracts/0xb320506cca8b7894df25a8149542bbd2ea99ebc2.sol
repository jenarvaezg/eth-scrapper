
//Address: 0xb320506cca8b7894df25a8149542bbd2ea99ebc2
//Contract name: RegistroBlockchain
//Balance: 0 Ether
//Verification Date: 3/14/2018
//Transacion Count: 24

// CODE STARTS HERE

pragma solidity ^0.4.21;
contract RegistroBlockchain {

    struct Registro {
        bool existe;
        uint block_number;
    }

    mapping(bytes32 => Registro) public registros;
    address public admin;

    function RegistroBlockchain() public {
        admin = msg.sender;
    }
    
    function TrocarAdmin(address _admin) public {
        require(msg.sender == admin);
        admin = _admin;
    }

    function GuardaRegistro(bytes32 hash) public {
        require(msg.sender == admin);
        require(!registros[hash].existe);
        registros[hash].existe = true;
        registros[hash].block_number = block.number;
    }

    function ConsultaRegistro(bytes32 hash) public constant returns (uint) {
        require(registros[hash].existe);
        return (registros[hash].block_number);
    }
}
