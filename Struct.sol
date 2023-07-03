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



// 1) The first line pragma solidity ^0.8.0; specifies the version of the Solidity compiler to be used. In this case, it indicates that the code should be compiled using Solidity version 0.8.0 or a compatible version.

// 2) The StructExample contract is declared using the contract keyword. It serves as a container for the functions and state variables defined within it.

// 3) Inside the StructExample contract, a user-defined struct called Person is defined using the struct keyword. The Person struct consists of three variables: name of type string, age of type uint256, and wallet of type address. These variables represent the information of a person.

// 4) The contract includes a state variable person of type Person. This variable stores an instance of the Person struct and is declared as public, allowing it to be accessed from outside the contract.

// 5) The setPerson function allows external callers to set the values of the person struct. It takes three parameters: _name of type string, _age of type uint256, and _wallet of type address. Inside the function, a new instance of the Person struct is created using the provided values, and it is assigned to the person variable.

// 6) The getPerson function is a read-only function that returns the values of the person struct. It returns a tuple containing the name, age, and wallet values stored in the person variable.

