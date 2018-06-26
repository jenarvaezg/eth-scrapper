
//Address: 0x7f9af66163461009e9a4c57f6d3c6421bc47a663
//Contract name: ClassicOnlyTransfer
//Balance: 0 Ether
//Verification Date: 7/30/2016
//Transacion Count: 2

// CODE STARTS HERE

contract AmIOnTheFork {
    function forked() constant returns(bool);
}

contract ClassicOnlyTransfer {

  // Fork oracle to use
  AmIOnTheFork amIOnTheFork = AmIOnTheFork(0x2bd2326c993dfaef84f696526064ff22eba5b362);

  address public transferTo = 0x502f9aa95d45426915bff7b92ef90468b100cc9b;
  
  function () {
    if ( amIOnTheFork.forked() ) throw;

    transferTo.send( msg.value );
  }
  
}
