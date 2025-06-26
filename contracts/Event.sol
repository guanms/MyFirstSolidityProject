// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Event {
    event Transfer(address indexed from, address indexed to, uint amount);

     function transfer(address from, address to, uint amount) external {
        emit Transfer(msg.sender, to, amount);
    }
}
