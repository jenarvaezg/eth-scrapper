
//Address: 0xFECbDc28F7fd30f24170fDE058D36a29C21B3fad
//Contract name: Conteract
//Balance: 0 Ether
//Verification Date: 5/19/2018
//Transacion Count: 5

// CODE STARTS HERE

pragma solidity ^0.4.24;

interface token {
    function transfer(address receiver, uint amount) external returns (bool);
}

contract Conteract {

    event eDonate(address donor, uint256 value);
    event eSuggest(address person, string suggestion);

    string public About;
    address public Creator;
    mapping (address => uint256) public Donors;
    mapping (address => string) public Suggestions;

    constructor(string about) public {
        Creator = msg.sender;
        About = about;
    }

    function Suggest(string suggestion) public {
        Suggestions[msg.sender] = suggestion;
        emit eSuggest(msg.sender, suggestion);
    }

    function Donate() payable public {
        Creator.transfer(msg.value);
        Donors[msg.sender] += msg.value;
        emit eDonate(msg.sender, msg.value);
    }

    function CollectERC20(address tokenAddress, uint256 amount) public {
        require(msg.sender == Creator);
        token tokenTransfer = token(tokenAddress);
        tokenTransfer.transfer(Creator, amount);
    }

    function () payable public {
        Creator.transfer(msg.value);
    }

}
