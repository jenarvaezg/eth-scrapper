
//Address: 0xd09180f956c97a165c23c7f932908600c2e3e0fb
//Contract name: SimplePonzi
//Balance: 0 Ether
//Verification Date: 11/27/2017
//Transacion Count: 3

// CODE STARTS HERE

contract SimplePonzi {
    address public currentInvestor;
    uint public currentInvestment = 0;
    
    function () payable public {
        // new investments must be 10% greater than current
        uint minimumInvestment = currentInvestment * 11 / 10;
        require(msg.value > minimumInvestment);

        // document new investor
        address previousInvestor = currentInvestor;
        currentInvestor = msg.sender;
        currentInvestment = msg.value;

        
        // payout previous investor
        previousInvestor.send(msg.value);
    }
}
