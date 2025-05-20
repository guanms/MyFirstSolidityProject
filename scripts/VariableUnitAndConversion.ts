

// @ts-ignore
async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);
    const VariableUnitAndConversion = await ethers.getContractFactory("VariableUnitAndConversion");

    const variableUnitAndConversion = await VariableUnitAndConversion.deploy();

    console.log("x:", await variableUnitAndConversion.weiUnit());
    console.log("arr1:", await variableUnitAndConversion.gweiUnit());
    console.log("arr2:", await variableUnitAndConversion.etherUnit());
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });