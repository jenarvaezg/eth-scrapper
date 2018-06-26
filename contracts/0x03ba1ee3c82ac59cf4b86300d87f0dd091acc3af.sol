
//Address: 0x03ba1ee3c82ac59cf4b86300d87f0dd091acc3af
//Contract name: MultiWhitelist
//Balance: 0 Ether
//Verification Date: 3/7/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.18;


interface whitelist {
    function setUserCategory(address user, uint category) external;
}


contract MultiWhitelist {
    address public owner;

    function MultiWhitelist(address _owner) public {
        owner = _owner;
    }
    function transferOwner(address _owner) public {
        require(msg.sender == owner);
        owner = _owner;
    }
    function multisetUserCategory(address[] users, uint category, whitelist listContract) public {
        require(msg.sender == owner);
        require(category == 4);

        for(uint i = 0 ; i < users.length ; i++ ) {
            listContract.setUserCategory(users[i],category);
        }
    }
}
