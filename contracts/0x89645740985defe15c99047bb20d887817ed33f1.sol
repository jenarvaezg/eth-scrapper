
//Address: 0x89645740985defe15c99047bb20d887817ed33f1
//Contract name: greeter
//Balance: 0 Ether
//Verification Date: 1/14/2018
//Transacion Count: 1

// CODE STARTS HERE

contract mortal {
  /* Define owner */
  address owner;

  /* executed at init and sets the owner */
  function mortal() { owner = msg.sender; }

  /* Recover funds */
  function kill() {
    if (msg.sender == owner) selfdestruct(owner);
  }
}

contract greeter is mortal {
  /* Define greeting */
  string greeting;

  /* Runs when contract is executed */
  function greeter(string _greeting) public {
    greeting = _greeting;
  }

  /* Main function */
  function greet() constant returns (string) {
    return greeting;
  }
}
