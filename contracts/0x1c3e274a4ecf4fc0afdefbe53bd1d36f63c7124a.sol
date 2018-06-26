
//Address: 0x1c3e274a4ecf4fc0afdefbe53bd1d36f63c7124a
//Contract name: WithdrawDAO
//Balance: 0 Ether
//Verification Date: 8/4/2016
//Transacion Count: 1

// CODE STARTS HERE

// Refund contract for trust DAO #31

contract DAO {
    function balanceOf(address addr) returns (uint);
    function transferFrom(address from, address to, uint balance) returns (bool);
    uint public totalSupply;
}

contract WithdrawDAO {
    DAO constant public mainDAO = DAO(0xcc34673c6c40e791051898567a1222daf90be287);
    address public trustee = 0xf8c3879ee8dde81f074abca79b2270eab9942ec1;

    function withdraw(){
        uint balance = mainDAO.balanceOf(msg.sender);

        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
            throw;
    }

    function trusteeWithdraw() {
        trustee.send((this.balance + mainDAO.balanceOf(this)) - mainDAO.totalSupply());
    }
}
