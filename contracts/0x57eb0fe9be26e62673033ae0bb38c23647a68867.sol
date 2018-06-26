
//Address: 0x57eb0fe9be26e62673033ae0bb38c23647a68867
//Contract name: GetSaiVoxValues
//Balance: 0 Ether
//Verification Date: 6/9/2018
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity ^0.4.24;

contract SaiVox {
    function par() public returns (uint);
    function way() public returns (uint);
}

contract GetSaiVoxValues {
    SaiVox public saiVox = SaiVox(0x9B0F70Df76165442ca6092939132bBAEA77f2d7A);

    uint public par;
    uint public way;

    function update() public {
        par = saiVox.par();
        way = saiVox.way();
    }
}
