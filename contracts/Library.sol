// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

library Strings {

    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";

    /**
     * 将一个uint256类型转换为十进制类型表示的ASCII字符串
     * @param value 要转换的uint256值
     * @return 返回一个字符串，表示十进制的值
     */
    function toString(uint value) public pure returns (string memory){
        if(value == 0) {
            return "0";
        }
        uint temp = value;
        uint digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + value % 10));
            value /= 10;
        }
        return string(buffer);
    }

    /**
     * 将一个uint256类型转换为十六进制类型表示的ASCII字符串
     */
    function toHexString(uint256 value) public pure returns (string memory) {
        if (value == 0) {
            return "0x00";
        }
        uint256 temp = value;
        uint256 length = 0;
        while (temp != 0) {
            length++;
            temp >>= 8;
        }
        return toHexString(value, length);
    }

    function toHexString(uint value, uint length) public pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = '0';
        buffer[1] = 'x';
        for (uint i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);

    }
    
}