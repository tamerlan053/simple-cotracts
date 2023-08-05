//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract StructMapping {
    mapping (address => uint) public balance;
    mapping(address => bool) public isAllowedToSend;

    address payable nextOwner;

    constructor() {

    }

    function contractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function transfer(uint amount) public {

    }

    receive() external payable{}
    fallback() external payable{}
 }
