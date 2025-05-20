// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract Return {
    function returnMultiple() public pure returns(uint256, bool, uint256[3] memory){
        return (1, true, [uint256(1), 2, 5] );
    }

    function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 123;
        _bool = true;
        _array = [uint256(3), 1, 2];
    }

    function returnNamed1() public pure returns (uint256 _number, bool _bool, uint256[3] memory _array){
        return (1, true, [uint256(1), 2, 5] );
    }
}
