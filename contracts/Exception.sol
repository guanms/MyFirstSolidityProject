// SPDX-License-Identifier: MIT
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

    function transferOwner2(uint tokenId, address newOwner) public{
        require(_owners[tokenId] == msg.sender, "TransferNotOwner");
        _owners[tokenId] = newOwner;
    }

    function transferOwner3(uint tokenId, address newOwner) public {
        assert(_owners[tokenId] == msg.sender);
        _owners[tokenId] = newOwner;
    }
}

