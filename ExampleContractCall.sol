//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ContractOne {
    mapping (address => uint) public addressBalance;

    function deposit() public payable {
        addressBalance[msg.sender] += msg.value;
    }
}

contract ContractTwo {
    function depositOnContractOne(address _contractOne) public {
        ContractOne one = ContractOne(_contractOne);
        one.deposit();
    }
}
