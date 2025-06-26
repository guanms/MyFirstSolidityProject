// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title VariableInit
 * @dev Demonstrates variable initialization in Solidity
 * 8 变量初始化
 */
contract VariableInit {

    uint public x;

    bool public y;

    string public z;

    int public a;

    address public b;

    enum Color {Red, Green, Blue}
    Color public c;

    function fi() internal {}

    function fe()  external{}

    uint[8] public d;
    uint[] public e;

    mapping(uint => string) public f;
}
