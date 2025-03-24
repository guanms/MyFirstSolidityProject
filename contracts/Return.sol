// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract Return {
    function returnMultiple() public pure returns(uint256, bool, uint256[3] memory){
        return (1, true, [uint256(1), 2, 5] );
    }
}
