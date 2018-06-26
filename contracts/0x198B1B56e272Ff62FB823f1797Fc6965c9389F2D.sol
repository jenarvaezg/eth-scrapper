
//Address: 0x198B1B56e272Ff62FB823f1797Fc6965c9389F2D
//Contract name: RCCContractTest
//Balance: 0 Ether
//Verification Date: 6/18/2018
//Transacion Count: 1

// CODE STARTS HERE

contract RCCContractTest {

        struct TXS {
                address addr;
                uint amount;
        }

        address private myAddress;
        uint amount;
        uint numberOfTXS;
        TXS[] txsVector;

        function RCCContractTest() {
                amount = 0;
                myAddress = this;
        }

        function initDeposit(uint totalAmount) {
                amount = totalAmount;
        }

        function registerTXS(uint txsAmount, address fromAddress) {
                txsVector.push(TXS(fromAddress, txsAmount));
                numberOfTXS = txsVector.length;
        }
        function getTXSAddress(uint index) returns (address) {
                return txsVector[index].addr;
        }
        function getTXSValue(uint index) returns (uint) {
                return txsVector[index].amount;
        }


}
