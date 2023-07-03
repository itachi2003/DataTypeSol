// Time Unit
//The units seconds, minutes, hours, and days can be used as suffixes, converting to multiples of the base unit seconds.


pragma solidity ^0.8.0;

contract TimeExample {
    uint256 public startTime;

    function startTimer() external {
        startTime = block.timestamp; // Store the current timestamp
    }

    function getElapsedTimeInSeconds() external view returns (uint256) {
        uint256 currentTime = block.timestamp; // Get the current timestamp
        uint256 elapsedTime = currentTime - startTime; // Calculate the elapsed time
        return elapsedTime; // Return the elapsed time in seconds
    }

    function waitForMinutes(uint256 _minutes) external pure returns (uint256) {
        uint256 minutesInSeconds = _minutes * 1 minutes; // Convert minutes to seconds
        return minutesInSeconds; // Return the duration in seconds
    }
}



// The TimeExample contract is declared using the contract keyword. It serves as a container for the functions and state variables defined within it.

// Inside the TimeExample contract, there is a state variable called startTime of type uint256. This variable will store the starting time in seconds.

// The startTimer function is a transactional function, which means it can be called externally to modify the contract's state. When called, it sets the value of startTime to the current timestamp using block.timestamp. It stores the current time when the function is called.

// The getElapsedTimeInSeconds function is a view function, which means it can be called externally to read the contract's state without modifying it. It retrieves the current timestamp using block.timestamp and assigns it to the currentTime variable. It then calculates the elapsed time in seconds by subtracting startTime from currentTime. The result is returned as the elapsed time in seconds.

// The waitForMinutes function is a pure function, which means it doesn't read or modify the contract's state. It takes a parameter _minutes of type uint256, representing the duration in minutes. It multiplies _minutes by 1 minutes to convert the duration from minutes to seconds. The result, minutesInSeconds, is returned as the duration in seconds


