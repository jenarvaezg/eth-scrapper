
//Address: 0xF3f2BbbBD5a1986944C6A4B9C8B37004E04dc8F6
//Contract name: BlocksureInfo
//Balance: 0 Ether
//Verification Date: 8/16/2016
//Transacion Count: 8

// CODE STARTS HERE

contract BlocksureInfo {

    address public owner;
    string public name;
    
    mapping (string => string) strings;

    function BlocksureInfo() {
        owner = tx.origin;
    }
    
    modifier onlyowner { if (tx.origin == owner) _ }

    function addString(string _key, string _value) onlyowner {
        strings[_key] = _value;
    }
    
    function setOwner(address _owner) onlyowner {
        owner = _owner;
    }
    
    function setName(string _name) onlyowner {
        name = _name;
    }
    
    function destroy() onlyowner {
        suicide(owner);
    }
}
