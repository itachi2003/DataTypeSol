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
