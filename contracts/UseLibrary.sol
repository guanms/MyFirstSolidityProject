// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "./Library.sol";

contract UseLibrary{
    /**
     * 问题：for uint这个地方不理解？
     * 答：告诉编译器，以后所有uint类型的变量，都可以像对象一样直接调用Strings库中的函数。
     * @param number 
     */
    using Strings for uint;
    function getString (uint number) public pure returns (string memory){
        return number.toHexString();
    }

    function getString2 (uint number) public pure returns (string memory){
        return Strings.toString(number);
    } 


}