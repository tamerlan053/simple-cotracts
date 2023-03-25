//SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;  

contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}


