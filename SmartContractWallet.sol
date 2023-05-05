//SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract SmartWallet {

    address payable public owner;

    mapping(address => uint) public allowance;
    mapping(address => uint) public isAllowedToSend;

    mapping(address => bool) public guardians;
    address payable nextOwner;
    mapping (address => mapping(address => bool)) nextOwnerVotedGaurdianBool;
    uint guardiansResetCount;
    uint public constant confitmationsFromGuardiansForReset = 3;

    constructor() {
        owner = payable(msg.sender);
    }

    function setGuardian(address _guardian, bool _isGuardian) public {
        require(msg.sender == owner, "You are not the owner, aborting!");
        guardians[_guardian] = _isGuardian;
    }

    function proposeOwner(address payable _newOwner) public {
        require(guardians[msg.sender], "You are not guardian of this wallet, aborting!");
        require(nextOwnerVotedGaurdianBool[_newOwner][msg.sender] == false, "You already voted, aborting");
        if (_newOwner != nextOwner) {
            nextOwner = _newOwner;
            guardiansResetCount = 0;
        }

        if (guardiansResetCount >= confitmationsFromGuardiansForReset) {
            owner = nextOwner;
            nextOwner = payable(address(0));
        }
    }

    function transfer(address payable _to, uint _amount, bytes memory _payload) public returns(bytes memory) {
        //require (msg.sender == owner, "You are not the owner, aborting!");
        if(msg.sender != owner) {
            require(isAllowedToSend[msg.sender], "You are not allowed to send anything from this contract, aboting");
        }

        (bool success, bytes memory returnData) = _to.call{value: _amount}(_payload);
        require (success, "Oops, calle was not successful");
        return returnData;
    }

    receive() external payable{}
}
