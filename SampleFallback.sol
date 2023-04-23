//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract File {
    uint public lastValueSent;
    string public lastFunctionCalled;

    uint public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "received";
    }

    fallback() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
}

//0xe492fd840000000000000000000000000000000000000000000000000000000000000001
