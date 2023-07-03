// Time Unit
//The units sexonds, minutes, hours, and days can be used as suddixes, converting to multiples of the base unit seconds.


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



