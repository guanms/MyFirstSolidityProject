// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract transfer {
    function transferTest (address to, uint amount) public returns (bool) {
        (bool flag, ) = to.call{value: amount}("");
        require(flag, "transfer failed");
        return true;
    }

    mapping(address => uint) balances;

    function withdraw(address to, uint amount) public returns (bool) {
        require(balances[msg.sender] >= amount, "insufficient balance");
        balances[msg.sender] -= amount;
        (bool flag, ) = to.call{value: amount}("");
        require(flag, "withdraw failed");
        return true;
    }
}