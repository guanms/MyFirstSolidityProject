require("@nomicfoundation/hardhat-toolbox");
require("@typechain/hardhat");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {
    hardhat: {
      chainId: 31337,
      gasPrice: 20000000000,
      accounts: {
        mnemonic: "test test test test test test test test test test test junk",
        count: 20
      }
    },
    localhost: {
      url: "http://127.0.0.1:8545",
      chainId: 31337,
      gasPrice: 20000000000
    }
  }
};