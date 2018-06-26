
//Address: 0xa7162282584f15005553d3de5ab6645037875024
//Contract name: ProvaSegura
//Balance: 0 Ether
//Verification Date: 11/14/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.0;
contract ProvaSegura {

    struct Prova {
		bool existe;
        uint block_number;
    }

    mapping(address => Prova) public provas;
	address public owner;

    function ProvaSegura() public {
		owner = msg.sender;
    }

    function GuardaProva(address hash_) public {
        require(msg.sender == owner);
		require(!provas[hash_].existe);
		provas[hash_].existe = true;
		provas[hash_].block_number = block.number;
    }

    function ConsultaProva(address hash_) public constant returns (uint ret) {
        ret = provas[hash_].block_number;
    }
}
