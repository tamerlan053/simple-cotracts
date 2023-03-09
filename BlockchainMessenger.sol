//SPDX-License-Identifier: MIT 

pragma solidity 0.8.15;

contract TheBlockchainMessenger {
    uint public changeCounter;

    address public owner;

    string public theMessage;

   

    function updateTheMessage (string memory _newMessage) public {
        if (msg.sender == owner) {
            theMessage = _newMessage;
            changeCounter++;
        }
    }
}
