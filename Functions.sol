// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functions {
    uint public  val = 4;
    function add() public  pure returns(uint){
      return 2 + 3;
    }
  
}

//In Solidity, pure and view are function modifiers that indicate how a function interacts with the blockchain's state

//view Functions:
//A function marked as view can read state variables but cannot modify them. It only allows "viewing" the blockchain state.
uint public val = 4;
function getVal() public view returns (uint) {
    return val;  // Reads the state variable `val`
}

//pure Functions:
//A function marked as pure does not read or modify the blockchain's state. It only performs computations.
function add() public pure returns (uint) {
    return 2 + 3;
}