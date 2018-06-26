
//Address: 0x6df5df1583fa3f31d7599503d56b4fe6925e0cb9
//Contract name: C
//Balance: 0 Ether
//Verification Date: 10/25/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.4;

contract C
{
    mapping (bytes2 => string) languageCodeToComment;
    function C() public
    {
        languageCodeToComment["ZH"] = "漢字";
    }
    function m() public view returns (string)
    {
        return languageCodeToComment["ZH"];
    }
}
