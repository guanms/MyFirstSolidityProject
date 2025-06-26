// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Donation {
    enent Donated(address indexed donor, uint256 amount);

    receive() external payable {
        emit Donated(msg.sender, msg.value);
    }

    function withdraw() external {
        payable(msg.sender).transfer(address(this).balance);
    }

    function getBalance() external view returns (uint256){
        return address(this).balance;
    }
}