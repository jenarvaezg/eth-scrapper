
//Address: 0xbe4ee9566e5f5ccd4793af0aa34d7e5031c9e00c
//Contract name: CapWhitelist
//Balance: 0 Ether
//Verification Date: 10/24/2017
//Transacion Count: 0

// CODE STARTS HERE

contract CapWhitelist {
    address public owner;
    mapping (address => uint256) public whitelist;

    event Set(address _address, uint256 _amount);

    function CapWhitelist() {
        owner = msg.sender;
        // Set in prod
    }

    function destruct() {
        require(msg.sender == owner);
        selfdestruct(owner);
    }

    function setWhitelisted(address _address, uint256 _amount) {
        require(msg.sender == owner);
        setWhitelistInternal(_address, _amount);
    }

    function setWhitelistInternal(address _address, uint256 _amount) private {
        whitelist[_address] = _amount;
        Set(_address, _amount);
    }
}
