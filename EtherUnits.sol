// Ether units
// The units wei, finney, szabo, and ether can be used as suffixies, converting to multiples of base unit wei

pragma solidity ^0.8.0;

contract EtherExample {
    function convertWeiToEther(uint256 _weiAmount) external pure returns (uint256) {
        uint256 etherAmount = _weiAmount / 1 ether; // Convert wei to ether
        return etherAmount; // Return the amount in ether
    }

    function convertEtherToWei(uint256 _etherAmount) external pure returns (uint256) {
        uint256 weiAmount = _etherAmount * 1 ether; // Convert ether to wei
        return weiAmount; // Return the amount in wei
    }

    function transferEther(address payable _recipient, uint256 _amountInEther) external {
        uint256 amountInWei = _amountInEther * 1 ether; // Convert ether to wei
        _recipient.transfer(amountInWei); // Transfer the specified amount of wei to the recipient
    }
}
