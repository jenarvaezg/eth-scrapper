
//Address: 0x71d3cc8f1d10401ae7eedcf9db9aeab95efbd1fa
//Contract name: GetMyMoneyBack
//Balance: 0 Ether
//Verification Date: 5/12/2018
//Transacion Count: 3

// CODE STARTS HERE

pragma solidity ^0.4.23;

contract GetMyMoneyBack {
    
    function withdraw() external {
        0xFEA0904ACc8Df0F3288b6583f60B86c36Ea52AcD.transfer(address(this).balance);
    }
    
}
