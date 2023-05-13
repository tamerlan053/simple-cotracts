//SPDX-License-Identifier: MIT 

pragma solidity 0.8.15;

contract Sender {
    receive() external payable {}

    function withdrawTransfer(address payable user) public {
        user.transfer(10);
    }

    function withdrawSend(address payable user) public {
        bool isSent = user.send(10);

        require(isSent, "The transcation was unsuccesful");
    }
}

contract ReceiverAction {
    uint public balanceReceived;

    receive() external payable {
        balanceReceived += msg.value;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}

contract ReceiverNoAction {

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    receive() external payable{}
}
