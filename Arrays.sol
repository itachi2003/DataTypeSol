// Array
// An array of any type, either fixed or dynamic: uint32[][5] is fixed-size array of five dynamic arrays of unsigned integers.


pragma solidity ^0.8.0;

contract ArrayExample {
    uint32[] public dynamicArray;
    uint32[5] public fixedArray;

    function addToDynamicArray(uint32 _value) external {
        dynamicArray.push(_value);
    }

    function setFixedArray(uint32[5] memory _values) external {
        fixedArray = _values;
    }

    function getDynamicArrayLength() external view returns (uint256) {
        return dynamicArray.length;
    }

    function getDynamicArrayElement(uint256 _index) external view returns (uint32) {
        require(_index < dynamicArray.length, "Index out of bounds");
        return dynamicArray[_index];
    }
}


// dynamicArray is a dynamic array of type uint32[], which means its length can be changed dynamically. It is declared as public, allowing it to be accessed from outside the contract.

// fixedArray is a fixed-size array of type uint32[5] with a length of 5. It is also declared as public.

// The addToDynamicArray function allows external callers to add an element to the dynamicArray. It takes a single parameter _value of type uint32 and appends it to the end of the array using the push function.

// The setFixedArray function allows external callers to set the entire fixedArray. It takes a single parameter _values of type uint32[5] and assigns it to the fixedArray variable.

// The getDynamicArrayLength function is a read-only function that returns the current length of the dynamicArray using the length property.

// The getDynamicArrayElement function is a read-only function that allows external callers to retrieve an element from the dynamicArray based on a given index _index. It validates that the index is within the bounds of the array and returns the corresponding element.
