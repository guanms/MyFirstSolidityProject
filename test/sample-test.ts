const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("HelloWorld", function () {
    it("Should return the correct message", async function () {
        //获取合约工厂
        const HelloWorld = await ethers.getContractFactory("HelloWorld");
        //部署合约，并传入初始消息
        const helloWorld = await HelloWorld.deploy("Hello, World!");
        // 直接使用 helloWorld 实例，无需调用 deployed()
        expect(await helloWorld.getMessage()).to.equal("Hello, World!");
    });
});