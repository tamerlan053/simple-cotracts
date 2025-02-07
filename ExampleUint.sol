//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleBoolean {
    uint256 public myUint;
    uint8 public myUint8 = 250;
    int public myInt = -10;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        myUint--;
    }

    function icremenentUint8() public {
        myUint8++;
    }

    function incrementInt() public {
        myInt++;
    }
}
