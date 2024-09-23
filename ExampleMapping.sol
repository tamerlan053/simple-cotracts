//SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract ExampleMapping {
    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
}
