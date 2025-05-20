

// @ts-ignore
async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);
    const VariableStorageScope = await ethers.getContractFactory("VariableStorageScope");

    const variableStorageScope = await VariableStorageScope.deploy();

    console.log("x:", await variableStorageScope.x());
    console.log("arr1:", await variableStorageScope.fStorage());
    console.log("arr2:", await variableStorageScope.fMemory());
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });