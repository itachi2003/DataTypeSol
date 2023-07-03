// Byte array ( fixed )
Fixed-size arrays of bytes, declared with bytes1 up to bytes32
 
pragma solidity ^0.8.0;

contract ByteArrayExample {
    function manipulateByteArray() external pure returns (bytes2) {
        bytes2 myBytes;
        myBytes[0] = 0x41; // Assign hexadecimal value 'A' to the first element
        myBytes[1] = 0x42; // Assign hexadecimal value 'B' to the second element

        return myBytes;
    }
}



// Byte array ( dynamic )
Variable-sized arrays of bytes, declared with bytes or string.


pragma solidity ^0.8.0;

contract ByteArrayExample {
    function manipulateBytes() external pure returns (bytes memory) {
        bytes memory myBytes = new bytes(5);
        myBytes[0] = 0x41; // Assign hexadecimal value 'A' to the first element
        myBytes[1] = 0x42; // Assign hexadecimal value 'B' to the second element
        myBytes[2] = 0x43; // Assign hexadecimal value 'C' to the third element
        myBytes[3] = 0x44; // Assign hexadecimal value 'D' to the fourth element
        myBytes[4] = 0x45; // Assign hexadecimal value 'E' to the fifth element

        return myBytes;
    }
}



// The first line pragma solidity ^0.8.0; specifies the version of the Solidity compiler to be used. In this case, it indicates that the code should be compiled using Solidity version 0.8.0 or a compatible version.

// The ByteArrayExample contract is declared using the contract keyword. It serves as a container for the functions and state variables defined within it.

// The manipulateBytes function is defined with the following signature: function manipulateBytes() external pure returns (bytes memory). It is marked as external, meaning it can be called from outside the contract, and pure, indicating that it does not read from or modify the contract's state. The function returns a bytes memory type.

// Inside the manipulateBytes function, a variable-sized byte array myBytes is declared using the bytes type and initialized with a length of 5 using new bytes(5). This creates a new dynamic byte array capable of storing 5 elements.

// The individual elements of the myBytes byte array are assigned hexadecimal values using the index notation. For example, myBytes[0] = 0x41 assigns the value 'A' to the first element, myBytes[1] = 0x42 assigns 'B' to the second element, and so on.

// Finally, the myBytes byte array is returned from the function.
