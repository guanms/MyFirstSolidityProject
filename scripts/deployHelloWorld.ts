// @ts-ignore
import {ethers} from "hardhat";


async function main() {
    const [deployer] = await ethers.getSigners();

    console.log("Deploying contracts with the account:", deployer.address);

    const HelloWorld = await ethers.getContractFactory("HelloWorld");
    const helloWorld = await HelloWorld.deploy("Hello, World!");

    console.log("HelloWorld deployed to:", helloWorld.target);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });