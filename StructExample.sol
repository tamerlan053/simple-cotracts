//SPDX-License-Identifier: MIT 

pragma solidity ^0.8.12;

contract Wallet {

    PaymentReceived public payment;

    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value);
    }
}



contract Wallet2 {

    struct PaymentReceivedStruct {
        address from;
        uint amount;
    }

    PaymentReceivedStruct public paymentt;

    function payContract() public payable {
    //  paymentt = PaymentReceivedStruct(msg.sender, msg.value);
    paymentt.from = msg.sender;
    paymentt.amount = msg.value;
    }
}
