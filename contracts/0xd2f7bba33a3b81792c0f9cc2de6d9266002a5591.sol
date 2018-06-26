
//Address: 0xd2f7bba33a3b81792c0f9cc2de6d9266002a5591
//Contract name: CampaignBeneficiary
//Balance: 0 Ether
//Verification Date: 1/3/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^ 0.4 .6;

contract owned {
    address public owner;

    function owned() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _;
    }

    function transferOwnership(address newOwner) onlyOwner {
        owner = newOwner;
    }
}

contract CampaignBeneficiary is owned{

        address public Resilience;

        function CampaignBeneficiary() {
            Resilience = 0xDA922E473796bc372d4a2cb95395ED17aF8b309B;

            bytes4 setBeneficiarySig = bytes4(sha3("setBeneficiary()"));
            if (!Resilience.call(setBeneficiarySig)) throw;
        }
        
        function() payable {
            if(msg.sender != Resilience) throw;
        }
        
        function simulatePathwayFromBeneficiary() public payable {

                bytes4 buySig = bytes4(sha3("buy()"));
                if (!Resilience.call.value(msg.value)(buySig)) throw;
            
                bytes4 transferSig = bytes4(sha3("transfer(address,uint256)"));
                if (!Resilience.call(transferSig, msg.sender, msg.value)) throw;
        }

        function sell(uint256 _value) onlyOwner {
                bytes4 sellSig = bytes4(sha3("sell(uint256)"));
                if (!Resilience.call(sellSig, _value)) throw;
        }
        
        function withdraw(uint256 _value) onlyOwner {
                if (!msg.sender.send(_value)) throw;
        }
        
        function closeCampaign() onlyOwner {
            bytes4 closeCampaignSig = bytes4(sha3("closeCampaign()"));
            if (!Resilience.call(closeCampaignSig)) throw;
        }
}
