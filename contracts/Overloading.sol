// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract overloading {

    function saySomething() public pure returns (string memory) {
        return "Hello, World!";
    }

    function saySomething(string memory message) public pure returns (string memory) {
        return message;
    }
}