//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Falm {

    address public owner;

    constructor() {
     owner == msg.sender;
    }

    struct Balance {
        uint amountSent;
    }


}



