// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Try {
    // view => read data from blockchain
    // pure => not reading on the blockchain

    function hey() external view returns (address, uint, uint) {
        address addr = msg.sender;
        uint timestamp = block.timestamp;
        uint nb = block.number;
        return (addr, timestamp, nb);
    }
}