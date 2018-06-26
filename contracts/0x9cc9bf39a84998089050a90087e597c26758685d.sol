
//Address: 0x9cc9bf39a84998089050a90087e597c26758685d
//Contract name: Storage
//Balance: 0 Ether
//Verification Date: 7/18/2017
//Transacion Count: 1

// CODE STARTS HERE

contract Storage {
    uint pos0;
    mapping(address => uint) pos1;
    function Storage() {
        pos0 = 1234;
        pos1[0x1f4e7db8514ec4e99467a8d2ee3a63094a904e7a] = 5678;
    }
}
