// scripts/deploy.js

const { ethers } = require("hardhat");

async function main() {
  // Deploy VIEW3Token
  const VIEW3Token = await ethers.getContractFactory("VIEW3Token");
  const view3Token = await VIEW3Token.deploy(ethers.utils.parseEther("1000000000")); // 1B tokens
  await view3Token.deployed();
  console.log("✅ VIEW3Token deployed to:", view3Token.address);

  // Deploy FounderNFT
  const FounderNFT = await ethers.getContractFactory("FounderNFT");
  const founderNFT = await FounderNFT.deploy();
  await founderNFT.deployed();
  console.log("✅ FounderNFT deployed to:", founderNFT.address);

  // Deploy Treasury
  const Treasury = await ethers.getContractFactory("Treasury");
  const treasury = await Treasury.deploy();
  await treasury.deployed();
  console.log("✅ Treasury deployed to:", treasury.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

