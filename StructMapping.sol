//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract NFTPool {
    address public owner = msg.sender;
    mapping (address => uint) public addressToUint; 
    constructor {

    }

   function sendNFT() public {

   }

   receive() external payable{};
}


