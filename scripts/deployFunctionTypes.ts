// @ts-ignore
import {ethers} from "hardhat";
import * as wasi from "node:wasi";

async function main(){
    const [deployer] = await ethers.getSigners();

    console.log("Deploying contracts with the account:", deployer.address);

    const FunctionTypes = await ethers.getContractFactory("FunctionTypes");
    // 部署合约
    const functionTypes = await FunctionTypes.deploy();
    // 打印合约地址
    console.log("FunctionTypes deployed to:", functionTypes);
    await functionTypes.add();
    console.log("number:", await functionTypes.number());
    console.log("new_number_pure:", await functionTypes.addPure(1));
    console.log("new_number_view:", await functionTypes.addView());

    // await functionTypes.minus();
    console.log("number:", await functionTypes.number());
    await functionTypes.minusCall();
    console.log("number:", await functionTypes.number());

    const balance = await functionTypes.minusPayable();
    console.log("balance:", balance.value);
    console.log("number:", await functionTypes.number());
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });