// Boolean (bool)
// Boolean value, true or false, with logical operators. !(not), && (and), || (or), == (equal), !=(not equal).

pragma solidity ^0.8.0;

contract BooleanExample {
    bool public isTrue = true;
    bool public isFalse = false;

    function logicalAnd() public view returns (bool) {
        // Logical AND operator (&&)
        return isTrue && isFalse;  // Evaluates to false
    }

    function logicalOr() public view returns (bool) {
        // Logical OR operator (||)
        return isTrue || isFalse;  // Evaluates to true
    }

    function logicalNot() public view returns (bool) {
        // Logical NOT operator (!)
        return !isFalse;  // Evaluates to true
    }

    function equalOperator() public view returns (bool) {
        // Equal operator (==)
        return isTrue == isFalse;  // Evaluates to false
    }

    function notEqualOperator() public view returns (bool) {
        // Not equal operator (!=)
        return isTrue != isFalse;  // Evaluates to true
    }
}
