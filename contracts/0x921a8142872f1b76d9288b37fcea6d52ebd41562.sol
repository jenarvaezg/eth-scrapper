
//Address: 0x921a8142872f1b76d9288b37fcea6d52ebd41562
//Contract name: mortal
//Balance: 0 Ether
//Verification Date: 8/10/2016
//Transacion Count: 1

// CODE STARTS HERE

contract mortal {
    /* Define variable owner of the type address*/
    address owner;

    /* this function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) suicide(owner); }
}
