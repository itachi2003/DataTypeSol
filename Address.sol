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

