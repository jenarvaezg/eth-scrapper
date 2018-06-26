
//Address: 0x5084bb035ad58007dde19466a341e5856db1ac7d
//Contract name: BlockHashMemory
//Balance: 0 Ether
//Verification Date: 12/27/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.19;

contract BlockHashMemory
{
    bytes32[] private blockHashes;
    address private curator;
    
    function BlockHashMemory() public
    {
        curator = msg.sender;
    }
    
    function transferCuratorship(address newCurator) external
    {
        require(msg.sender == curator);
        curator = newCurator;
    }
    
    function getBlockHashOrZero(uint256 blockNumber) external view returns (bytes32 blockHashOrZero)
    {
        if (blockNumber >= blockHashes.length) return 0x00;
        return blockHashes[blockNumber];
    }
    
    function curatorWrite(uint256 startBlockNumber, bytes32[] newHashes) external
    {
        require(msg.sender == curator);
        for (uint256 i=0; i<newHashes.length; i++)
        {
            blockHashes[startBlockNumber + i] = newHashes[i];
        }
    }
    
    function volunteerWrite() external returns (uint256 amountWritten)
    {
        amountWritten = 0;
        for (uint256 num=block.number-255; num<block.number; num++)
        {
            if (msg.gas < 20000) break;
            blockHashes[num] = block.blockhash(num);
            amountWritten++;
        }
    }
}
