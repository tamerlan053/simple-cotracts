//SPDX-License-Identifier: MIT 

pragma solidity 0.8.15;

contract Zhara {
    mapping (address => uint8) public balanceReceived;

    function storeMoney() public payable {
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value);
    }

    function withdraw(address payable to, uint8 amount) public {
             require (balanceReceived[msg.sender] >= amount, "Not enough balance, aborting!");
            balanceReceived[msg.sender] -= amount;
            to.transfer(amount);
    }
}
