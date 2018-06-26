
//Address: 0x958f81df7c7d4832058bf4a520f000f05f4601d1
//Contract name: RBInformationStore
//Balance: 0 Ether
//Verification Date: 11/9/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract Ownable {
  address public owner;

  function Ownable() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    if (msg.sender != owner) {
      revert();
    }
    _;
  }
}

contract RBInformationStore is Ownable {
    address public profitContainerAddress;
    address public companyWalletAddress;
    uint public etherRatioForOwner;
    address public multisig;

    function RBInformationStore(address _profitContainerAddress, address _companyWalletAddress, uint _etherRatioForOwner, address _multisig) {
        profitContainerAddress = _profitContainerAddress;
        companyWalletAddress = _companyWalletAddress;
        etherRatioForOwner = _etherRatioForOwner;
        multisig = _multisig;
    }

    function setProfitContainerAddress(address _address)  {
        require(multisig == msg.sender);
        if(_address != 0x0) {
            profitContainerAddress = _address;
        }
    }

    function setCompanyWalletAddress(address _address)  {
        require(multisig == msg.sender);
        if(_address != 0x0) {
            companyWalletAddress = _address;
        }
    }

    function setEtherRatioForOwner(uint _value)  {
        require(multisig == msg.sender);
        if(_value != 0) {
            etherRatioForOwner = _value;
        }
    }

    function changeMultiSig(address newAddress){
        require(multisig == msg.sender);
        multisig = newAddress;
    }

    function changeOwner(address newOwner){
        require(multisig == msg.sender);
        owner = newOwner;
    }
}
