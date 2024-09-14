//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleWrapAround {
    uint256 public myUint;

    uint8 public myUint8 = 250;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        unchecked { // update from 0.8.15
            myUint--;
        }
    }

    function icremenentUint8() public {
        myUint8++;
    }
}
