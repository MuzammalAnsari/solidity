// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityExample {

    // Public state variable
    uint public publicData = 100;

    // Internal state variable
    uint internal internalData = 200;

    // Private state variable
    uint private privateData = 300;

    // Public function: accessible from anywhere, including externally and internally.
    function getPublicData() public view returns (uint) {
        return publicData;
    }

    // Internal function: accessible from within the contract and derived contracts (if inheritance is used).
    function getInternalData() internal view returns (uint) {
        return internalData;
    }

    // Private function: only accessible within this contract.
    function getPrivateData() private view returns (uint) {
        return privateData;
    }

    // External function: can be called from outside the contract, but not from within this contract directly.
    function getExternalData() external pure returns (string memory) {
        return "This is external data!";
    }

    // Public function to demonstrate internal and private function usage within the contract.
    function callInternalAndPrivate() public view returns (uint, uint) {
        uint internalResult = getInternalData(); // Can call internal function
        uint privateResult = getPrivateData();   // Can call private function
        return (internalResult, privateResult);
    }

    // Trying to call the external function inside the contract requires using 'this' reference.
    function callExternalInside() public view returns (string memory) {
        return this.getExternalData();  // Calls the external function from within the contract
    }
}


// Explanation of Visibility:

//   => public:
// publicData: Can be accessed from anywhere (internally or externally) and has an automatically generated getter function.
// getPublicData(): This function can be called both externally
//  (by other contracts or users) and internally (by other functions within the same contract).

//   => internal:
// internalData: Only accessible within this contract or derived contracts (if inheritance is used,
// which isn't in this case since it's all in one file).
// getInternalData(): Can be called within this contract and by any contracts that inherit from it.
// Since there are no derived contracts in this file, it is only callable internally here.


//    => private:
// privateData: Only accessible within this contract. It cannot be accessed by derived contracts or externally.
// getPrivateData(): Can only be used within this contract. In the example, it's called inside callInternalAndPrivate.


//    => external:
// getExternalData(): This function can only be called from outside the contract. 
// You cannot call it directly from within the contract, except by using this.getExternalData(). 
// This is demonstrated in the callExternalInside function.