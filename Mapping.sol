// MAPPING
// Hash lookup tables for key => value pairs : mapping(KEY_TYPE => VALUE_TYPE) NAME.


pragma solidity ^0.8.0;

contract MappingExample {
    mapping(uint256 => string) public names;

    function setName(uint256 _id, string memory _name) external {
        names[_id] = _name;
    }

    function getName(uint256 _id) external view returns (string memory) {
        return names[_id];
    }
}


// The MappingExample contract allows you to associate names with unique IDs using a mapping.

// The names mapping is like a table that associates uint256 IDs with corresponding string names.

// The setName function lets you set the name for a specific ID. It takes two inputs: the ID (_id) and the name (_name). It updates the names mapping by assigning the given _name to the provided _id.

// The getName function allows you to retrieve the name associated with a specific ID. It takes an input parameter _id and returns the corresponding name from the names mapping.


