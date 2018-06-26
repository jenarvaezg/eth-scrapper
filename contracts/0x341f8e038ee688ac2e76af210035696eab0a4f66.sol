
//Address: 0x341f8e038ee688ac2e76af210035696eab0a4f66
//Contract name: tradeReport
//Balance: 0 Ether
//Verification Date: 2/10/2017
//Transacion Count: 6

// CODE STARTS HERE

contract tradeReport {
    struct trade {
        string symbol;
        string price;
        string quantity;
        string buyer;
        string seller;
        string execID;
    }
    address public publisher;
    trade public lastTrade;

    function tradeReport() {
        publisher = msg.sender;
    }
    
    event Execution(string symbol, string price, string quantity, string buyer, string seller, string execID);
    
    function publishExecution(string symbol, string price, string quantity, string buyer, string seller, string execID) {
        if (msg.sender != publisher)
            throw;
            
        Execution(symbol, price, quantity, buyer, seller, execID);
        lastTrade = trade(symbol, price, quantity, buyer, seller, execID);
    }
}
