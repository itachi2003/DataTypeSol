// Fixed Point( fixed, ufixed)
 // Fixed-point numbers, declared with (u)fixedMxN where M is the size in bits (increments of 8 up to 256) and N is the number of decimals after the point ( up to 18);
 // e.g unfixed32x2

pragma solidity ^0.8.0;

contract FixedPointExample {
    unfixed32x2 public myFixedNumber;
    
    constructor() {
        myFixedNumber = 3.75; // Assigning a value of 3.75 to myFixedNumber
    }
    
    function multiplyByTwo() external view returns (unfixed32x2) {
        return myFixedNumber * 2; // Multiplying myFixedNumber by 2 and returning the result
    }
}
