
//Address: 0x53848e6049e19bf83acba186aeb42117011becb6
//Contract name: AffiliateNetwork
//Balance: 0 Ether
//Verification Date: 10/21/2017
//Transacion Count: 19

// CODE STARTS HERE

pragma solidity ^0.4.15;

contract AffiliateNetwork {
    uint public idx = 0;
    mapping (uint => address) public affiliateAddresses;
    mapping (address => uint) public affiliateCodes;

    function () payable {
        if (msg.value > 0) {
            msg.sender.transfer(msg.value);
        }

        addAffiliate();
    }

    function addAffiliate() {
        if (affiliateCodes[msg.sender] != 0) { return; }

        idx += 1;   // first assigned code will be 1
        affiliateAddresses[idx] = msg.sender;
        affiliateCodes[msg.sender] = idx;
    }
}
