//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract StructMapping {
    mapping (address => uint) public balance;
    mapping (address => bool) public isAllowedToSend;

   mapping (uint => bool) public allowed;
 
    address payable nextOwner;

    constructor() {
        owner = msg.sender;
    }

    function contractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function transfer(uint amount) public {
       require(msg.sender, "You are not the owner");
    }

    function increment(uint numberTransactions) public {
       numberTransactions++;
    }

   function totalTransactions() public view returns(uint){

   }
    
    receive() external payable{}
    fallback() external payable{}
 }
