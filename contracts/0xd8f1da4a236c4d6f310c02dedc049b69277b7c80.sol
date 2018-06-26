
//Address: 0xd8f1da4a236c4d6f310c02dedc049b69277b7c80
//Contract name: Looper
//Balance: 0 Ether
//Verification Date: 1/10/2017
//Transacion Count: 1

// CODE STARTS HERE

contract Looper {

function canDoLoop(uint _costSansLoops, uint _loopCost, uint _numberOfLoops) public constant returns (bool) {
    uint gasLimit = getGasLimit();
    uint gasForLoops = gasLimit - _costSansLoops;
    uint loopLimit = getLoopLimit(gasForLoops, _loopCost);
    if(_numberOfLoops < loopLimit) return true;
    return false;
}

function getGasLimit() internal constant returns (uint) {
    uint gasLimit;

    assembly {
        gasLimit := gaslimit
    }
    return gasLimit;
}

function getLoopLimit(uint _gasForLoops, uint _loopCost) internal constant returns (uint) {
    uint loopLimit = _gasForLoops / _loopCost;
    return loopLimit;
}

}
