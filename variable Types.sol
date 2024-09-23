// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functions {
    uint public val = 4; // State variable: persists on the blockchain

    function add() public pure returns(uint) {
        uint val2 = 5; // Local variable: exists only during function execution
        return 2 + val2; // Adds a constant to the local variable and returns the result
    }

    function global() public view returns (uint) {
        return msg.sender.balance; // Returns the balance of the address calling the function
        // return block.timestamp; // Returns the current block's timestamp
    }

    // A new payable function to return msg.value
    function getMsgValue() public payable returns (uint) {
        return msg.value; // Returns the amount of Ether sent with the transaction
    }
}
