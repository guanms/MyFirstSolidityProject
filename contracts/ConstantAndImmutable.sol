// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title ConstantAndImmutable
 * @dev Demonstrates constant and immutable variables in Solidity
 * 第9讲 常量和不变量
 */
contract ConstantAndImmutable {

    /**
     * @dev Declares constant variables
     * 在solidity的类型中，值类型的变量可以声明为constant和immutable
     * string和bytes类型的变量可以声明为constant，但不能为immutable
     */

    uint constant x = 1;

    uint constant y = 0xAA;

    bytes constant z = "WTF";

    address constant constant_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    uint public immutable immutable_x = 1;
    address public immutable immutable_address;
    uint public immutable immutable_y;
    uint public immutable immutable_z;

    constructor() {
        immutable_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        immutable_y = 2;
        immutable_z = 3;
    }

    function tets() public pure returns(uint) {
        uint a = 1;
        return a;
    }
}
