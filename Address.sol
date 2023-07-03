// A 20-byte Ethereum address. The address object has many helpful member functions, the main ones being balance 
// ( returns the account balance) and transfer (transfers ether to the account).


pragma solidity ^0.8.0;

contract AddressExample {
    function getBalance(address _account) external view returns (uint256) {
        return _account.balance;
    }

    function transferEther(address payable _recipient, uint256 _amount) external {
        require(address(this).balance >= _amount, "Insufficient balance in the contract");

        _recipient.transfer(_amount);
    }
}

// The first line pragma solidity ^0.8.0; specifies the version of the Solidity compiler to be used. In this case, it indicates that the code should be compiled using Solidity version 0.8.0 or a compatible version.

// The AddressExample contract is declared using the contract keyword. It serves as a container for the functions and state variables defined within it.

// The getBalance function is defined with the following signature: function getBalance(address _account) external view returns (uint256). It is marked as external, meaning it can be called from outside the contract, and view, indicating that it only reads from the blockchain without modifying any state. The function takes an Ethereum address _account as an argument and returns the account's balance as a uint256 value using the balance member function of the address object.

// The transferEther function is defined with the following signature: function transferEther(address payable _recipient, uint256 _amount) external. It takes two arguments: _recipient, which is an Ethereum address declared as payable to receive ether, and _amount, which is the amount of ether to be transferred.

// Inside the transferEther function, a require statement is used to check if the balance of the contract (retrieved using address(this).balance) is greater than or equal to the specified _amount. If the condition evaluates to false, meaning there is insufficient balance, the function execution will be reverted with an error message provided as the second argument to require.

// If the require condition is satisfied, the transfer function is called on the _recipient address object, passing _amount as the argument. This transfers the specified amount of ether from the contract to the _recipient address.
