//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleStrings {
    string public myString = "Hello World";
    bytes public myBytes = "Hello World";

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}
