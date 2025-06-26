// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Variables
 * @dev Demonstrates variables in Solidity
 * 5.3 变量的作用域
 */
contract Variables {

    /**
     * 状态变量，数据存储在链上，所有合约内的函数都能访问
     * 读写会消耗gas
     * @dev Declares variables
     */
    uint public x = 1;
    uint public y;
    string public z;


    function foo()  external{
        x= 5;
        y = 10;
        z = "Hello World";
    }

    /**
     * 局部变量，数据存储在内存中，函数内调用其他函数不会消耗gas
     * @dev Declares variables
     */
    function bar() external pure returns (uint) {
        uint xx = 10;
        uint yy = 20;
        uint zz = xx + yy;
        return zz;
    }

    /**
     * 全局变量，数据存储在链上，都属于Solidity预留的关键字，所有合约内的函数都能访问
     * @dev Declares variables
     */
    function global() external view returns (address, uint, bytes memory) {
        address sender = msg.sender;
        uint blockNumber = block.number;
        bytes memory data = msg.data;
        return (sender, blockNumber, data);
    }
}
