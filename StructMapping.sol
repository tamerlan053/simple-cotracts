//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract StructMapping {
    
    

   mapping (uint => bool) public allowed;
 
    address payable nextOwner;

    constructor() {
        owner = msg.sender;
    }

    function transfer(uint amount) public {
       require(msg.sender, "You are not the owner");
    }
 }
