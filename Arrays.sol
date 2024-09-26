To define all the different types of arrays in a single Solidity file, we can combine them into a single smart contract. Here's an example that includes fixed-size arrays, dynamic arrays, multi-dimensional arrays, arrays of structs, and memory arrays, along with functions to interact with them:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExamples {
    // 1. Fixed-Size Array
    uint[5] public fixedArray = [1, 2, 3, 4, 5];

    // 2. Dynamic Array
    uint[] public dynamicArray;

    // 3. Multi-Dimensional Array
    uint[2][3] public multiArray = [[1, 2], [3, 4], [5, 6]];

    // 4. Array of Structs
    struct Person {
        string name;
        uint age;
    }
    Person[] public people;

    // 5. Bytes Array (Dynamic and Fixed)
    bytes public dynamicBytes = "Hello";
    bytes4 public fixedBytes = 0x12345678;

    // ===== Fixed-Size Array Functions =====
    
    function getFixedElement(uint index) public view returns (uint) {
        require(index < fixedArray.length, "Index out of bounds");
        return fixedArray[index];
    }

    function setFixedElement(uint index, uint value) public {
        require(index < fixedArray.length, "Index out of bounds");
        fixedArray[index] = value;
    }

    function getFixedLength() public view returns (uint) {
        return fixedArray.length;
    }

    // ===== Dynamic Array Functions =====

    function addElementToDynamicArray(uint value) public {
        dynamicArray.push(value);
    }

    function removeLastElementFromDynamicArray() public {
        require(dynamicArray.length > 0, "Array is empty");
        dynamicArray.pop();
    }

    function getDynamicElement(uint index) public view returns (uint) {
        require(index < dynamicArray.length, "Index out of bounds");
        return dynamicArray[index];
    }

    function getDynamicLength() public view returns (uint) {
        return dynamicArray.length;
    }

    // ===== Multi-Dimensional Array Functions =====

    function getMultiElement(uint row, uint col) public view returns (uint) {
        require(row < multiArray.length, "Row index out of bounds");
        require(col < multiArray[row].length, "Column index out of bounds");
        return multiArray[row][col];
    }

    // ===== Array of Structs Functions =====

    function addPerson(string memory name, uint age) public {
        people.push(Person(name, age));
    }

    function getPerson(uint index) public view returns (string memory, uint) {
        require(index < people.length, "Index out of bounds");
        return (people[index].name, people[index].age);
    }

    function getPeopleCount() public view returns (uint) {
        return people.length;
    }

    // ===== Bytes Array Functions =====

    function addByte(byte newByte) public {
        dynamicBytes.push(newByte);
    }

    function getBytesLength() public view returns (uint) {
        return dynamicBytes.length;
    }

    // ===== Memory Array Function =====

    function createMemoryArray(uint length) public pure returns (uint[] memory) {
        uint[] memory tempArray = new uint[](length);

        for (uint i = 0; i < length; i++) {
            tempArray[i] = i;
        }

        return tempArray;
    }
}
```

### Explanation of the Combined Contract:

1. **Fixed-Size Array (`fixedArray`)**:
   - A `uint[5]` array that stores five elements.
   - Functions to get, set, and check the length of the array.

2. **Dynamic Array (`dynamicArray`)**:
   - A dynamic array of `uint` type that can grow or shrink.
   - Functions to add elements, remove the last element, and get the length.

3. **Multi-Dimensional Array (`multiArray`)**:
   - A fixed-size 2D array `uint[2][3]`.
   - A function to retrieve elements from the array.

4. **Array of Structs (`people`)**:
   - An array of `Person` structs, where `Person` has `name` and `age` properties.
   - Functions to add a person and get a person's details.

5. **Bytes Array (`dynamicBytes`, `fixedBytes`)**:
   - A dynamic bytes array (`dynamicBytes`) and a fixed-size byte array (`fixedBytes`).
   - A function to add a byte to the dynamic array.

6. **Memory Array (`createMemoryArray`)**:
   - A function that creates a temporary memory array and initializes it.

This contract covers all the basic types of arrays in Solidity and provides functions to interact with them.