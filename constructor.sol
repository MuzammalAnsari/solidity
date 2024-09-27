pragma solidity ^0.8.0;

contract Parent {
    uint256 public parentValue;

    // Parent constructor
    constructor(uint256 _parentValue) {
        parentValue = _parentValue;
    }
}

contract Child is Parent {
    uint256 public childValue;

    // Child constructor calls the Parent constructor
    constructor(uint256 _parentValue, uint256 _childValue) Parent(_parentValue) {
        childValue = _childValue;
    }
}
