//SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

interface IERC20 {
    function transfer(address to, uint amount) external;
    function decimals() external view returns(uint);
}
