
//Address: 0x0486cF65A2F2F3A392CBEa398AFB7F5f0B72FF46
//Contract name: Log
//Balance: 0 Ether
//Verification Date: 3/19/2018
//Transacion Count: 1

// CODE STARTS HERE

contract Log 
{
    struct Message
    {
        address Sender;
        string  Data;
        uint Val;
        uint  Time;
    }
    
    Message[] public History;
    
    Message LastMsg;
    
    function AddMessage(address _adr,uint _val,string _data)
    public
    {
        LastMsg.Sender = _adr;
        LastMsg.Time = now;
        LastMsg.Val = _val;
        LastMsg.Data = _data;
        History.push(LastMsg);
    }
}
