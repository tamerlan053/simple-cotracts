//SPDX-License-Identifier: MIT 

pragma solidity 0.8.15;

contract InheritanceModifier {
    mapping (address => uint) public tokenBalance; 

    address owner; 

    uint tokenPrice = 1 ether; 

    constructor() {
        owner = msg.sender; 
        tokenBalance[owner] = 100;
    }
}
