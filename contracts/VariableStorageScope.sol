// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev 变量的存储和作用域
 */
contract VariableStorageScope {

    /**
     * @dev 合约中的状态变量默认位置修饰符为storage
     * 永久存储在链上
     * 适合合约中需要长期保存的数据
     * Gas成本最高
     */
    uint public x = 1;


    /**
     * @dev memory修饰符表示变量存储位置为内存,不上链
     * 适合临时存储数据，只有在函数执行时存在，执行完后销毁，比如函数参数，函数返回值等
    */
    function fMemory(uint _x) external view returns (uint) {
        uint y = 1; // 局部变量,函数内部定义的基本类型默认就是 memory
        return _x+y;
    }

    /**
     * calldata修饰符表示变量存储位置为内存,不上链，但是calldata修饰的参数不能修改
     * 只读的外部函数参数
     * 只能用在external函数参数上，不能修改
     * 主要用于节省gas，特别是传数组、字符串等大数据时
    */
    function fCalldata(uint[] calldata _x) external pure returns (uint){
//        _x[0] = 1;
        return _x.length;
    }

    function readOnly(bytes calldata _x) external pure returns (uint){
        return _x.length;
    }

    // storage修饰的状态变量赋值给局部变量时，当局部变量发生改变时，状态变量也会改变
    uint[] public arr1 = [1,2,3];
    function fStorage() public returns (uint[] memory){
        uint[] storage _arr = arr1;
        _arr[0] = 2;
        return arr1;
    }

    // memory修饰的状态变量赋值给局部变量时，当局部变量发生改变时，状态变量不会改变
    uint[] public arr2 = [1,2,3];
    function fMemory() public view returns (uint[] memory){
        uint[] memory _arr = arr2;
        _arr[0] = 2;
        return arr2;
    }


}
