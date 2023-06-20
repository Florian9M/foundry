// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint public counter;

    function inc() external  {// External permet de changer depuis la blockchain
        counter = counter + 1;
    }

    function dec() external {
        counter--;
    }
}