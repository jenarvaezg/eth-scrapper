
//Address: 0xf9ac5e26d7ec113f42b18c78c05fab68181adfbf
//Contract name: WHAuthorizeAddress
//Balance: 0 Ether
//Verification Date: 8/25/2016
//Transacion Count: 1

// CODE STARTS HERE

// The contract that allows DTH that held DAO at a contract address to
// authorize an enduser-account to do the withdrawal for them
//
// License: BSD3

contract WHAuthorizeAddress {

    modifier noEther() {if (msg.value > 0) throw; _}

    event Authorize(address indexed dthContract, address indexed authorizedAddress);

    /// @notice Authorizes a regular account to act on behalf of a contract
    /// @param _authorizedAddress The address of the regular account that will
    ///                           act on behalf of the msg.sender contract.
    function authorizeAddress(address _authorizedAddress) noEther() {

        // sender must be a contract and _authorizedAddress must be a user account
        if  (getCodeSize(msg.sender) == 0 || getCodeSize(_authorizedAddress) > 0) {
            throw;
        }

        Authorize(msg.sender, _authorizedAddress);
    }

    function() {
        throw;
    }

    function getCodeSize(address _addr) constant internal returns(uint _size) {
        assembly {
            _size := extcodesize(_addr)
        }
    }
}
