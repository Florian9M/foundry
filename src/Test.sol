// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract Test {
    function add(uint a, uint b) external pure returns (uint) {
        return a + b;
    }

    function sub (int a, int b) external pure returns (int) {
        return a - b;
    }

    function globalVariable() external view returns (address) {
        address sender = msg.sender;
        return sender;
    }
}