//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract StructMapping {
    
    function transfer() public {
        require(msg.sender == owner, 'You are not the owner');
    }

   mapping (uint => bool) public allowed;
 
    address payable nextOwner;

    constructor() {
        owner = msg.sender;
    }
 }
