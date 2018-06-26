
//Address: 0xa6c76471cc89cff4e65cc1fc36613f3c31e4d0d1
//Contract name: FixBet16
//Balance: 0.5 Ether
//Verification Date: 5/18/2018
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.21;

contract Etherwow{
    function userRollDice(uint, address) payable {uint;address;}
}

/**
 * @title FixBet16
 * @dev fix bet num = 16, bet size = 0.5 eth. 
 */
contract FixBet16{
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    address public owner;
    Etherwow public etherwow;
    bool public bet;

    /*
     * @dev contract initialize
     * @param new etherwow address
     */        
    function FixBet16(){
        owner = msg.sender;
    }

    /*
     * @dev owner set etherwow contract address
     * @param new etherwow address
     */    
    function ownerSetEtherwowAddress(address newEtherwowAddress) public
        onlyOwner
    {
       etherwow = Etherwow(newEtherwowAddress);
    }

    /*
     * @dev owner set fallback function mode
     * @param new fallback function mode. true - bet, false - add funds to contract
     */    
    function ownerSetMod(bool newMod) public
        onlyOwner
    {
        bet = newMod;
    }

    /*
     * @dev add funds or bet. if bet == false, add funds to this contract for cover the txn gas fee
     */     
    function () payable{
        if (bet == true){
            require(msg.value == 500000000000000000);
            etherwow.userRollDice.value(msg.value)(16, msg.sender);  
        }
        else return;
    }
}
