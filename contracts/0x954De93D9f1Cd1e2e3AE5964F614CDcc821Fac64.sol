
//Address: 0x954De93D9f1Cd1e2e3AE5964F614CDcc821Fac64
//Contract name: SimpleStorage
//Balance: 0 Ether
//Verification Date: 4/5/2017
//Transacion Count: 11

// CODE STARTS HERE

contract SimpleStorage {
    event valueChanged(string oldValue, string newValue);

    string _value;

    function setValue(string value) {
        valueChanged(_value, value);
        _value = value;
    }

    function getValue() constant returns (string) {
        return _value;
    }
}
