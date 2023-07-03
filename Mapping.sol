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


