//SPDX-License-Identifier: MIT 

pragma solidity ^0.8.15;

contract WillThrow {
    error NotAllowedError(string);
    function aFunction() public pure {
        //require(false, "ErrorMessage")
        //assert(false)
        revert NotAllowedError("Error message");
    }
}





