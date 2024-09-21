// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract variables {
    //code 
    // string public  name = "ansari code";
    bool active = true;
    uint public age = 22;
    string name = "muzammal";
    bytes2 data = "ca";
    int8 lenght = 127;
    uint8 nibble_length = 255; 
}

// uint: Unsigned integer (cannot be negative)
// Range: 0 to (2^256 - 1)

// int: Signed integer (can be negative)
// Range: -(2^255) to (2^255 - 1)

// Example ranges for specific sizes:

// uint8: 0 to 2^8 - 1 (0 to 255)
// int8: -2^7 to 2^7 - 1 (-128 to 127)

// uint16: 0 to 2^16 - 1 (0 to 65,535)
// int16: -2^15 to 2^15 - 1 (-32,768 to 32,767)

// uint32: 0 to 2^32 - 1 (0 to 4,294,967,295)
// int32: -2^31 to 2^31 - 1 (-2,147,483,648 to 2,147,483,647)

// uint256: 0 to 2^256 - 1 (0 to 1.1579209e+77)
// int256: -2^255 to 2^255 - 1 (-5.7896045e+76 to 5.7896045e+76)
