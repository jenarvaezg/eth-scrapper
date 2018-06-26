
//Address: 0xc72684c0495da31a24f83197245cd7aa78f816d2
//Contract name: SlavenSS
//Balance: 0 Ether
//Verification Date: 12/21/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.19;
contract SlavenSS {
    
    address public owner;
    address public slavenAdress;
    
    bytes32 private targetHash = 0xa8e19a7b59881fcc24f7eb078a8e730ef446b05a404d078341862359ba05ade6; 
    
    modifier onlySlaven() {
        require (msg.sender == slavenAdress);
        _;
    }
    
    modifier onlyOwner() {
        require (msg.sender == owner);
        _;
    }
    
    function SlavenSS() public {
        owner = msg.sender;
    }
    
    function changeHash(bytes32 newTargetHash) public onlyOwner {
        targetHash = newTargetHash;
    }
    
    function registerAsSlaven(string passphrase) public {
        require (keccak256(passphrase) == targetHash);
        slavenAdress = msg.sender;
    }
    
    function deposit() payable external {
        //deposits money to Slaven SS fund
    }
    
    function withdraw() onlySlaven external {
        require (slavenAdress != address(0));
        require(slavenAdress.send(this.balance));
    }
}
