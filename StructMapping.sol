//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract StructMapping {
    mapping (address => uint) public balance;

    address payable nextOwner;

    constructor() {
        owner = payable(msg.sender);
    }

    function contractBalance() public view returns(uint) {
        return address(this).balance;
    }
 }
