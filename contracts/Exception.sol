// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

error TransferNotOwner();

contract Error {
    mapping(uint => address) private _owners;

    function TransferOwner1(uint tokendId, address newOwner) public{
        if(_owners[tokendId] != msg.sender) {
            revert TransferNotOwner();

        }
        _owners[tokendId] = newOwner;
    }
}

