// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store details about the coin
    string public name = "MyToken";           // Token Name
    string public symbol = "MTK";             // Token Abbreviation
    uint256 public totalSupply;               // Total Supply

    // Mapping from addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the given address
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;                // Increase total supply
        balances[_to] += _value;              // Increase balance of the recipient
    }

    // Burn function to decrease total supply and balance of the given address
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");  // Ensure the sender has enough balance
        totalSupply -= _value;                 // Decrease total supply
        balances[_from] -= _value;             // Decrease balance of the sender
    }
}
