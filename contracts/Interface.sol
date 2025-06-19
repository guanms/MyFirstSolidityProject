// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

abstract contract Base1{
    string public name = "Base";
    function getAlias() public pure virtual returns (string memory);
}

contract BaseImpl is Base1{
    function getAlias() public pure override returns (string memory) {
        return "BaseImpl";
    }
}

