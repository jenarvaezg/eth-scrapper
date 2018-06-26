
//Address: 0x8e1603fe77501c98265053d349911cd11f055cd7
//Contract name: BonusAwareCalculator
//Balance: 0 Ether
//Verification Date: 9/20/2017
//Transacion Count: 1

// CODE STARTS HERE

pragma solidity ^0.4.13;

contract Calculator {
    function getAmount(uint value) constant returns (uint);
}

contract BonusCalculator {
    function getBonus() constant returns (uint);
}

contract BonusAwareCalculator is Calculator {
    Calculator delegate;

    BonusCalculator bonusCalculator;

    function BonusAwareCalculator(address delegateAddress, address bonusCalculatorAddress) {
        delegate = Calculator(delegateAddress);
        bonusCalculator = BonusCalculator(bonusCalculatorAddress);
    }

    function getAmount(uint value) constant returns (uint) {
        uint withoutBonus = delegate.getAmount(value);
        uint bonusPercent = bonusCalculator.getBonus();
        uint bonus = withoutBonus * bonusPercent / 100;
        return withoutBonus + bonus;
    }
}
