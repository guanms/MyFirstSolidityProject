// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
 * @title VariableUnitAndConversion
 * @dev Demonstrates unit and conversion in Solidity
 * 5.4 变量的单位和换算
 */
contract VariableUnitAndConversion {
    /**
     * @dev Demonstrates the unit of wei
     * 以太单位中，最小单位是wei
     * wei： 1 wei = 1
     * gwei：1 gwei = 1e9 = 1 000 000 000
     * ether：1 ether = 1e18 = 1 000 000 000 000 000 000
     */


    function weiUnit() external pure returns(uint) {
        assert(1 wei == 1e0);
        assert(1 wei == 1);
        return 1 wei;
    }

    function gweiUnit() external pure returns(uint) {
        assert(1 gwei == 1e9);
        assert(1 gwei == 10000000000);
        return 1 gwei;
    }

    function etherUnit() external pure returns(uint) {
        assert(1 ether == 1e18);
        assert(1 ether == 10000000000000000000);
        return 1 ether;
    }
}
