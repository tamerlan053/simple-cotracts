//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract StructMapping {
    
    function transfer() public {

    }

   mapping (uint => bool) public allowed;
 
    address payable nextOwner;

    constructor() {
        owner = msg.sender;
    }
 }
