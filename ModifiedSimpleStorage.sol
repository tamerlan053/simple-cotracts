//SPDX-License-Identifier: MIT

pragma solidity 0.8.17; 

contract ModifiedSimpleStorage {
    uint public favoriteNumber;
    mapping (string => uint) public nameToFavoriteNumber;

    People public person1 = People({name: "Ann", age: 20, married: true});
    People public person2 = People({name: "Jon", age: 39, married: false});

    struct People {
        string name;
        uint age;
        bool married;
    }

    People[] public people;

    function storeFavotiteNumber(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint) {
        return favoriteNumber;
    }

    function primer() public pure returns(uint) {
        return(2 + 2);
    }

    function addPerson(string memory _name, uint _age, bool _married) public {
        people.push(People(_name, _age, _married));
        nameToFavoriteNumber[_name] = _age;
    }
}
