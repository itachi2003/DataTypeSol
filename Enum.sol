// Enum

// User-defined type for enumerating discrete values: enum NAME {LABEL1, LABEL2,...}


pragma solidity ^0.8.0;

contract EnumExample {
    enum Status {Inactive, Active, Suspended, Deleted}

    Status public userStatus;

    function setUserStatus(uint256 _status) external {
        require(_status < 4, "Invalid status value");
        userStatus = Status(_status);
    }

    function getUserStatus() external view returns (Status) {
        return userStatus;
    }
}

