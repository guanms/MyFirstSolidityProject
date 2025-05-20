// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract Mapping {

    mapping(uint => address) public idToAddress;

    mapping(address => address) public swapPair;

    function writeMap(uint key, address value) public {
        idToAddress[key] = value;
    }
}
