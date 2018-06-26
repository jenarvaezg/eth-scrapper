
//Address: 0x15870addc0635dc3c99ba6a37c23e8f8f77d9898
//Contract name: WithdrawDAO
//Balance: 0 Ether
//Verification Date: 8/4/2016
//Transacion Count: 1

// CODE STARTS HERE

// Refund contract for trust DAO #7

contract DAO {
    function balanceOf(address addr) returns (uint);
    function transferFrom(address from, address to, uint balance) returns (bool);
    uint public totalSupply;
}

contract WithdrawDAO {
    DAO constant public mainDAO = DAO(0x1975bd06d486162d5dc297798dfc41edd5d160a7);
    address public trustee = 0xe82d5b10ad98d34df448b07a5a62c1affbef758f;

    function withdraw(){
        uint balance = mainDAO.balanceOf(msg.sender);

        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
            throw;
    }

    function trusteeWithdraw() {
        trustee.send((this.balance + mainDAO.balanceOf(this)) - mainDAO.totalSupply());
    }
}
