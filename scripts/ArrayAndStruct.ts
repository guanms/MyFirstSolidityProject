

// @ts-ignore
async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying with account:", deployer.address);

    const ArrayAndStruct = await ethers.getContractFactory("ArrayAndStruct");
    const arrayAndStruct = await ArrayAndStruct.deploy();

    console.log("Contract address:", arrayAndStruct.address);

    // 调用并打印 array4
    await arrayAndStruct.arrayPush();
    const array4 = await arrayAndStruct.getArray4();
    console.log("array4:", array4);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });