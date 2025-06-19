// @ts-ignore
import {ethers} from "hardhat";


async function main() {
    const [deployer] = await ethers.getSigners();

    console.log("Deploying contracts with the account:", deployer.address);

    const ValueTypes = await ethers.getContractFactory("ValueTypes");
    // 部署合约
    const valueTypes = await ValueTypes.deploy();
    // 打印合约地址
    console.log("ValueTypes deployed to:", valueTypes);

    // 调用合约中的公共变量
    console.log("_bool:", await valueTypes._bool());
    console.log("_bool1:", await valueTypes._bool1());
    console.log("_bool2:", await valueTypes._bool2());
    console.log("_bool3:", await valueTypes._bool3());
    console.log("_bool4:", await valueTypes._bool4());
    console.log("_bool5:", await valueTypes._bool5());
    console.log("_int1:", await valueTypes._int1());
    console.log("_int2:", await valueTypes._int2());
    console.log("_int3:", await valueTypes._int3());
    console.log("_int4:", await valueTypes._int4());
    console.log("_address:", await valueTypes._address());
    console.log("_byte1:", await valueTypes._byte1());
    console.log("enumToUint:", await valueTypes.enumToUint());
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });