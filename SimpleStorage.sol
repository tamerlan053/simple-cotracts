//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 favoriteNumber;


    struct People{ 
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber + 1;
        uint testVar = 5;
        testVar = 10;
        retrieve();
    } 

    function retrieve() public view returns(uint256){
        return favoriteNumber;
        }

    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        People memory newPerson = People(_favoriteNumber, _name);
        people.push(newPerson);
    }
}
