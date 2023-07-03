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

// The first line pragma solidity ^0.8.0; specifies the version of the Solidity compiler to be used. In this case, it indicates that the code should be compiled using Solidity version 0.8.0 or a compatible version.

// The EnumExample contract is declared using the contract keyword. It serves as a container for the functions and state variables defined within it.

// Inside the EnumExample contract, an enum type called Status is defined using the enum keyword. It represents a set of discrete values that can be assigned to a variable. In this case, the Status enum has four possible values: Inactive, Active, Suspended, and Deleted.

// The contract includes a state variable userStatus of type Status to store the current status of a user. It is declared as public, meaning it can be accessed from outside the contract.

// The setUserStatus function is declared as external to allow external callers to invoke it. It takes a single parameter _status of type uint256, representing the desired status value. The function updates the userStatus variable with the provided _status value, but only if the value is less than 4 (the total number of enum values). Otherwise, it reverts the transaction with the specified error message.

// The getUserStatus function is declared as external and view, indicating that it does not modify the contract's state and can be called from outside the contract. It returns the current value of the userStatus variable.
