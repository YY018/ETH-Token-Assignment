// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Public variables for token details
    string public name;
    string public symbol;
    uint256 public totalSupply;

    // Mapping from address to balance
    mapping(address => uint256) public balanceOf;

    // Constructor to set token details at deployment
    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
        totalSupply = 0; // Initial total supply is 0
    }

    // Mint function to create new tokens
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balanceOf[_to] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint256 _value) public {
        require(balanceOf[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balanceOf[_from] -= _value;
    }
}
