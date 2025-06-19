// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

/**
 * @title Inheritance
 * @dev Demonstrates inheritance in Solidity
 * 13. 继承
 */
contract Inheritance {

}

contract Yeye {
    event Log(string msg);

    function hip() public virtual {
        emit Log("Yeye");
    }

    function pop() public virtual {
        emit Log("Yeye");
    }

    function yeye() public virtual {
        emit Log("Yeye");
    }

}

contract Baba is Yeye{
    function hip() public virtual override {
        emit  Log("Baba");
    }

    function pop() public virtual override {
        emit Log("Baba");
    }

    function baba() public virtual {
        emit Log("Baba");
    }

    function callParent() public {
        Yeye.pop();
    }
    function callParent2() public {
        super.pop();
    }
}

contract Erzi is Yeye, Baba{
    function hip() public virtual override(Yeye, Baba) {
        emit Log("Erzi");
    }

    function pop() public virtual override(Yeye, Baba) {
        emit Log("Erzi");
    }
}

contract Base1 {

    modifier exactDivideBy2And3(uint _a) virtual{
        require(_a % 2 == 0 && _a % 3 == 0);
        _;
    }
}

contract Identifier  is Base1 {
    function f(uint _a) public exactDivideBy2And3(_a) returns (uint) {
        return getExactDividedBy2And3WithoutModifier(_a);
    }

    function getExactDividedBy2And3WithoutModifier(uint _a) public pure returns (uint, uint )  {
        uint div2 = _a / 2;
        uint div3 = _a / 3;
        return (div2, div3);
    }
}

abstract contract A{
    uint public a;
    constructor(uint _a){
        a = _a;
    }
}
contract B is A(1){
    uint public b;
    constructor(uint _b){
        b = _b;
    }
}












