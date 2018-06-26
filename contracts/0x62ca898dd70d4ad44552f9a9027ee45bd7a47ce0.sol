
//Address: 0x62ca898dd70d4ad44552f9a9027ee45bd7a47ce0
//Contract name: WithdrawDAO
//Balance: 0 Ether
//Verification Date: 8/6/2016
//Transacion Count: 5

// CODE STARTS HERE

// Refund contract for trust DAO #52

contract DAO {
    function balanceOf(address addr) returns (uint);
    function transferFrom(address from, address to, uint balance) returns (bool);
    uint public totalSupply;
}

contract WithdrawDAO {
    DAO constant public mainDAO = DAO(0xe4ae1efdfc53b73893af49113d8694a057b9c0d1);
    address constant public trustee = 0xda4a4626d3e16e094de3225a751aab7128e96526;

    function withdraw(){
        uint balance = mainDAO.balanceOf(msg.sender);

        if (!mainDAO.transferFrom(msg.sender, this, balance) || !msg.sender.send(balance))
            throw;
    }

    function trusteeWithdraw() {
        trustee.send((this.balance + mainDAO.balanceOf(this)) - mainDAO.totalSupply());
    }
}