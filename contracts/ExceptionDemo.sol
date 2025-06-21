// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

error UnauthorizedAccess();

contract Bank {
    /**
     * @notice 问题 1：owner 变量代表什么？
        owner 是我们自己定义的一个状态变量（可以理解成 Java 里的成员变量）；
        它的作用是：记录这个合约的“拥有者地址”；
        一般用于限制只有 owner 才有权限做某些管理操作（如提款、销毁合约、修改参数等）。
     */
    address public owner;
    mapping(address => uint256) public balance;

    /**
     * @dev 合约的构造函数，合约在部署时只有一次机会设置初始化
     * 
     */
    constructor() {
        /**
         * @notice 问题2: msg.sender 代表什么？
            msg.sender 是 Solidity 中的一个全局变量，它代表当前调用合约的地址；
            在合约部署时，msg.sender 就是部署合约的账户地址；
            在合约函数调用时，msg.sender 就是调用该函数的账户地址。
         */
        owner = msg.sender;
    }
    function deposit() public payable{
        require(msg.value > 0, "Deposit must be greater than zero");
        balance[msg.sender] += msg.value;
    }

    /**
     * 问题3: 普通用户提款的msg.sender不应该是普通用户的地址吗？这样的话，msg.sender永远不等于owner，为什么还要判断msg.sender是否等于owner？
     * 答：这里设计的是只允许合约部署者提款，其他用户只能存款；
     */
    function withdraw(uint amount) public {
        if(msg.sender != owner) {
            revert UnauthorizedAccess();
        }
        require(balance[msg.sender] >= amount, "Insufficient balance");
        balance[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

}