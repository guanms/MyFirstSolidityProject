// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


/**
 * @title ControlFlow
 * @dev Demonstrates control flow in Solidity
 * 第10讲 控制流及其应用
 */
contract ControlFlow {

    function ifElseTest(uint _x) public pure returns (bool) {
        if(_x == 0){
            return true;
        }else{
            return false;
        }
    }

    function forLoopTest() public pure returns(uint) {
        uint sum = 0;
        for(uint i=0; i<10; i++){
            sum =  sum + i;
        }
        return sum;
    }

    function whileTest() public pure returns(uint) {
        uint sum = 0;
        uint  i = 0;
        while(i<10){
            sum = sum + i;
            i++;
        }
        return sum;
    }

    function doWhileTest() public pure returns(uint) {
        uint sum = 0;
        uint i=0;
        do{
         sum = sum + i;
         i++;
        }while(i<10);
        return sum;
    }

    function ternaryTest(uint x, uint y) public pure returns (uint) {
        return x > y ? x : y;
    }
}
