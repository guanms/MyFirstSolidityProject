// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract ConstructorAndModifier {
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require( msg.sender == owner, "Only owner can call this function");
        _;
    }

    function changeOwner(address newAddress) external onlyOwner {
        owner = newAddress;
    }
}
