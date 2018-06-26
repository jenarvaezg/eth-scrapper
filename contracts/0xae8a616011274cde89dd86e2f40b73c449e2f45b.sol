
//Address: 0xae8a616011274cde89dd86e2f40b73c449e2f45b
//Contract name: WithdrawDAO
//Balance: 0.011295451727475566 Ether
//Verification Date: 8/6/2016
//Transacion Count: 7

// CODE STARTS HERE

// Refund contract for trust DAO #66

contract DAO {
    function balanceOf(address addr) returns (uint);
    function transferFrom(address from, address to, uint balance) returns (bool);
    uint public totalSupply;
}

contract WithdrawDAO {
    DAO constant public mainDAO = DAO(0xd164b088bd9108b60d0ca3751da4bceb207b0782);
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
