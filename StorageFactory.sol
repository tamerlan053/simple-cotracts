//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;
    function rabota() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStorageNumber) public {
        SimpleStorage simpleStorage =  simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint) {
        SimpleStorage simpleStorage =  simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}