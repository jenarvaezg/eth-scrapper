
//Address: 0x342F4057110bE50957d0f156F4939a929944C69e
//Contract name: MultiWhitelist
//Balance: 0 Ether
//Verification Date: 2/22/2018
//Transacion Count: 224

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
    function multisetUserCategory(address[] users, uint category, whitelist listContract) public {
        require(msg.sender == owner);

        for(uint i = 0 ; i < users.length ; i++ ) {
            listContract.setUserCategory(users[i],category);
        }
    }
}
