
//Address: 0x62854fc64d74b7eb5e4d0a2910e277ffb4d3d1e3
//Contract name: DdosMitigation
//Balance: 0 Ether
//Verification Date: 3/13/2017
//Transacion Count: 2

// CODE STARTS HERE

pragma solidity 0.4.8;

contract DdosMitigation {
    struct Report {
        address reporter;
        bytes32 ipAddress;
    }

    address public owner;
    Report[] public reports;

    function DdosMitigation() {
        owner = msg.sender;
    }

    function report(bytes32 ipAddress) {
        reports.push(Report({
            reporter: msg.sender,
            ipAddress: ipAddress
        }));
    }
}
