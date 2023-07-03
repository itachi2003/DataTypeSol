// Integer (int, uint)
// Signed (int) and unsigned (uint) integers, declared in increments of 8 bits from int8 to uint 256.
// Without a size suffix, 256-bit quantities are used, to match the word size of the EVM

// Signed Integers (int):

// int8: Represents a signed integer with a size of 8 bits (-128 to 127).
// int16: Represents a signed integer with a size of 16 bits (-32,768 to 32,767).
// int32: Represents a signed integer with a size of 32 bits (-2,147,483,648 to 2,147,483,647).
// int64: Represents a signed integer with a size of 64 bits (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807).
// int128: Represents a signed integer with a size of 128 bits.
// int256: Represents a signed integer with a size of 256 bits.


// Unsigned Integers (uint):

// uint8: Represents an unsigned integer with a size of 8 bits (0 to 255).
// uint16: Represents an unsigned integer with a size of 16 bits (0 to 65,535).
// uint32: Represents an unsigned integer with a size of 32 bits (0 to 4,294,967,295).
// uint64: Represents an unsigned integer with a size of 64 bits (0 to 18,446,744,073,709,551,615).
// uint128: Represents an unsigned integer with a size of 128 bits.
// uint256: Represents an unsigned integer with a size of 256 bits.

pragma solidity ^0.8.0;

contract IntegerExample {
    int8 public negativeNumber = -42;
    uint256 public positiveNumber = 1234567890;
}
