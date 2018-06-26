
//Address: 0xf6b92e6f5a533a8534ecc3c669dffe8a202c2cad
//Contract name: GenTokenAddress
//Balance: 0 Ether
//Verification Date: 10/16/2017
//Transacion Count: 0

// CODE STARTS HERE

contract I {
    function transfer(address to, uint256 val) public returns (bool);
    function balanceOf(address who) constant public returns (uint256);
}

contract GenTokenAddress {
    function GenTokenAddress(address token, address to) {
        I(token).transfer(to, I(token).balanceOf(address(this)));
    }
}
