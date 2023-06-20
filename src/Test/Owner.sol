// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Owner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function isOwner(address addr) external view returns (bool) {
        // ici on met en view car on a besoin de connaite owner (sur la blockchain)
        if (addr == owner) {
            return true;
        } else {
            return false;
        }
    }

    function sum(uint n) external pure returns (uint) {
        uint acc;
        for (uint i = 0; i < n; i++) {
            acc = acc + i;
        }
        return acc;
    }

    function testRequire(uint i) external pure {
        require(i > 10, "i <= 10");
    }

    function testRevert(uint i) external pure {
        if (i > 10) {
            revert("i > 10");
        }
    }

    uint public nb = 0;

    function inc() external  {
        nb++;
        require(nb < 10); // si condition pas remplis ça annule le nb++
    }
}