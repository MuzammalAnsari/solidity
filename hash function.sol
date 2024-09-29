// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract hashFunc {
    bytes32 public password;

    function genPass(string memory _password) public {
        password = keccak256(abi.encodePacked(_password));
    }

    function sendmoney(string memory _password) public view {
        require(keccak256(abi.encodePacked(_password)) == password, "Invalid Password");
        
    }
}

//error in using encodePacked collision
contract hashFunc1 {

    function genPass(string memory _password, string memory _name) public pure  returns(bytes32){
    return  keccak256(abi.encodePacked(_password, _name));
    }
}
// The issue is likely due to the combination of string parameters in abi.encodePacked, 
// which can cause a problem when two different inputs result in the same encoded data,
//  leading to a hash collision. For example, ("abc", "def") and ("ab", "cdef") would produce the same hash.

// To prevent this, you can add explicit delimiters or use abi.encode instead of abi.encodePacked.
//  Here's an updated version of the contract with abi.encode to avoid potential collisions:

//encode remove the error collision
contract hashFunc2 {

    function genPass(string memory _password, string memory _name) public pure  returns(bytes32){
    return  keccak256(abi.encode(_password, _name));
    }
}