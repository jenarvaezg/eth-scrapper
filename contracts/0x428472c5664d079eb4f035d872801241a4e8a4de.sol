
//Address: 0x428472c5664d079eb4f035d872801241a4e8a4de
//Contract name: SimplePonzi
//Balance: 0.007 Ether
//Verification Date: 11/22/2017
//Transacion Count: 3

// CODE STARTS HERE

contract SimplePonzi {
    address public currentInvestor;
    uint public currentInvestment = 0;
    
    function () payable public {
        require(msg.value > currentInvestment);
        
        // payout previous investor
        currentInvestor.send(currentInvestment);

        // document new investment
        currentInvestor = msg.sender;
        currentInvestment = msg.value;

    }
}
