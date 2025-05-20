// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract ArrayAndStruct {

    /**
     * @dev 创建动态数组,对于memory类型的动态数组，可以用new创建，必须声明长度，并且声明后长度不能改变
     */
    function f() public pure {
        uint[] memory array8 = new uint[](8);
        array8[0] = 1;

        bytes memory array9 = new bytes(9);

        g([uint(1), 2, 3]);
    }

    function g(uint[3] memory) public pure  {
        /**
         * @dev 创建静态数组，必须声明长度，并且长度不能改变
         * 动态的memory数组不能用固定长度的memory数组或者数组字面量赋值
         * uint[] memory array10 = [uint[1], 2, 3];
         */
    }

    uint[] array4;

    function arrayPush() public returns (uint[] memory) {
        uint[2] memory a = [uint(1), 2];
        array4 = a;
        array4.push(3);
        return array4;
    }

    function getArray4() public view returns (uint[] memory) {
        return array4;
    }

    /**
     * @dev 结构体
     */
    struct Student {
        uint id;
        uint score;
    }
    Student student;

    /**
     * @dev 存储结构体变量
     * 方法1：在函数中创建一个storage的struct引用
     */
    function initStudent()  external{
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }

    /**
     * @dev 存储结构体变量
     * 方法2: 直接对结构体的成员变量赋值
     */
    function initStudent1() external {
        student.id = 1;
        student.score = 80;
    }
    /**
     * @dev 存储结构体变量
     * 方法3：用类似函数的方式初始化一个结构体，用于整体赋值
     */
    function initStudent2() external {
        student = Student(2, 90);
    }

    /**
     * @dev 存储结构体变量
     * 方法4：用键值对的方式初始化一个结构体，用于整体赋值
     */
    function initStudent3() external {
        student = Student({id: 3, score: 100});
    }

}
