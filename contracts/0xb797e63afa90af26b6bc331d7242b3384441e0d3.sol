
//Address: 0xb797e63afa90af26b6bc331d7242b3384441e0d3
//Contract name: Nicks
//Balance: 0 Ether
//Verification Date: 3/9/2018
//Transacion Count: 1

// CODE STARTS HERE

contract Nicks {
    mapping(address => string) private nickOfOwner;
    mapping(string => address) private ownerOfNick;

    event NickSet (string _nick, address _owner);
    event NickUnset (string _nick, address _owner);

    function Nicks() public {
    }

    function nickOf(address _owner) public view returns (string _nick) {
        return nickOfOwner[_owner];
    }

    function ownerOf(string _nick) public view returns (address _owner) {
        return ownerOfNick[_nick];
    }

    function saveNick(string _nick) public {
        require(bytes(_nick).length > 2);
        require(ownerOf(_nick) == address(0));

        address owner = msg.sender;
        string storage oldNick = nickOfOwner[owner];

        if (bytes(oldNick).length > 0) {
            delete ownerOfNick[oldNick];
        }

        nickOfOwner[owner] = _nick;
        ownerOfNick[_nick] = owner;
        NickSet(_nick, owner);
    }

    function deleteNick() public {
        require(bytes(nickOfOwner[msg.sender]).length > 0);

        address owner = msg.sender;
        string storage oldNick = nickOfOwner[owner];

        NickUnset(oldNick, owner);

        delete ownerOfNick[oldNick];
        delete nickOfOwner[owner];
    }
}
