// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract payables {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function transferEth() public payable {
    require(msg.value > 0, "You must send some Ether.");
    owner.transfer(msg.value);
}

}