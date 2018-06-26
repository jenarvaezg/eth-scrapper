
//Address: 0xf63600989abe81911c3b177e738d5b41c4d3198c
//Contract name: SimplePonzi
//Balance: 0 Ether
//Verification Date: 11/22/2017
//Transacion Count: 3

// CODE STARTS HERE

contract SimplePonzi {
    address public currentInvestor;
    uint public currentInvestment = 0;
    
    function () payable public {
        require(msg.value > currentInvestment);
        
        // payout previous investor
        currentInvestor.send(msg.value);

        // document new investment
        currentInvestor = msg.sender;
        currentInvestment = msg.value;

    }
}
