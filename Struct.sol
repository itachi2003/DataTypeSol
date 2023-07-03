  // Struct
// User-defined data containers for grouping variables: 
// struct NAME {
// TYPE1 VARIABLE1;
// TYPE2 VARIABLE2; ... }


pragma solidity ^0.8.0;

contract StructExample {
    struct Person {
        string name;
        uint256 age;
        address wallet;
    }

    Person public person;

    function setPerson(string memory _name, uint256 _age, address _wallet) external {
        person = Person(_name, _age, _wallet);
    }

    function getPerson() external view returns (string memory, uint256, address) {
        return (person.name, person.age, person.wallet);
    }
}


