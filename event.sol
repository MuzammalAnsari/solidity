// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    // Declaring an event
    event NewValueSet(address indexed sender, uint256 value);

    uint256 public storedValue;

    // Function that emits the event
    function setValue(uint256 _value) public {
        storedValue = _value;

        // Emitting the event
        emit NewValueSet(msg.sender, _value);
    }
}
