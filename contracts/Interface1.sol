// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface Base {
    function getFirstName() external pure returns (string memory);
    function getLastName() external pure returns (string memory);
}

contract BaseImplInterface is Base {
    function getFirstName() external pure override returns (string memory) {
        return "Base";
    }

    function getLastName() external pure override returns (string memory) {
        return "Impl";
    }
}