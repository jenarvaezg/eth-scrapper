
//Address: 0x9411cf70f97c2ed09325e58629d48401aed50f89
//Contract name: WhiteList
//Balance: 0 Ether
//Verification Date: 6/30/2017
//Transacion Count: 20

// CODE STARTS HERE

pragma solidity ^0.4.11;
contract WhiteList {
    string public constant VERSION = "0.1.1";

    mapping(address=>bool) public contains;
    uint public chunkNr = 0;
    uint public recordNr=0;
    uint public controlSum = 0;
    bool public isSetupMode = true;
    address admin = msg.sender;

    //adds next address package to the internal white list.
    //call valid only in setup mode.
    function addPack(address[] addrs, uint16 _chunkNr)
    setupOnly
    adminOnly
    external {
        require ( chunkNr++ == _chunkNr);
        for(uint16 i=0; i<addrs.length; ++i){
            contains[addrs[i]] = true;
            controlSum += uint160(addrs[i]);
        }
        recordNr += addrs.length;
    }

    //disable setup mode
    function start()
    adminOnly
    public {
        isSetupMode = false;
    }

    modifier setupOnly {
        if (!isSetupMode) throw;
        _;
    }

    modifier adminOnly {
        if (msg.sender != admin) throw;
        _;
    }
}
