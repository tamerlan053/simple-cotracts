//SPDX-License-Identifier: MIT 

pragma solidity 0.8.15;

contract MyContract {
    mapping (address => uint) public balance;

    constructor() {
        balance[msg.sender] = 100;
    }

    function transfer(address _to, uint amount) public {
        balance[msg.sender] -= amount;
        balance[_to] += amount;
    }

    function someCrypticFunctionName(address _addr) public view returns(uint) {
        return balance[_addr];
    }
}
