
//Address: 0xd8a8f37573628d53e3f7537412e5e8c54bb4e761
//Contract name: ErrorLib
//Balance: 0 Ether
//Verification Date: 9/29/2017
//Transacion Count: 1

// CODE STARTS HERE

/// @title Token Register Contract
/// @author Daniel Wang - <daniel@loopring.org>.
library ErrorLib {

    event Error(string message);

    /// @dev Check if condition hold, if not, log an exception and revert.
    function orThrow(bool condition, string message) public constant {
        if (!condition) {
            error(message);
        }
    }

    function error(string message) public constant {
        Error(message);
        revert();
    }
}
