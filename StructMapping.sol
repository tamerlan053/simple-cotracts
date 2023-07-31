//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract StructMapping {
    mapping (address => uint) public balance;

    address public owner = msg.sender;
}
