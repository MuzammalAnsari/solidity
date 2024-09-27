pragma solidity ^0.8.0;

contract MappingExamples {
    // 1. Simple mapping to store balances of addresses
    mapping(address => uint) public balances;

    // 2. Nested mapping to store allowances
    mapping(address => mapping(address => uint)) public allowances;

    // 3. Mapping to store User struct data
    struct User {
        string name;
        uint balance;
    }
    mapping(address => User) public users;

    // 4. Mapping to store an array of scores for each address
    mapping(address => uint[]) public scores;

    // Function to update the balance of an address
    function updateBalance(uint _newBalance) public {
        balances[msg.sender] = _newBalance;
    }

    // Function to set allowance for a spender
    function setAllowance(address _spender, uint _amount) public {
        allowances[msg.sender][_spender] = _amount;
    }

    // Function to create a user with a name
    function createUser(string memory _name) public {
        users[msg.sender] = User(_name, 0);
    }

    // Function to add a score for the user
    function addScore(uint _score) public {
        scores[msg.sender].push(_score);
    }

    // Function to get all scores of the user
    function getScores(address _user) public view returns (uint[] memory) {
        return scores[_user];
    }
}
