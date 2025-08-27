// scripts/deploy.js

const { ethers } = require("hardhat");

async function main() {
  // Deploy V3Token
  const V3Token = await ethers.getContractFactory("V3Token");
  const v3Token = await V3Token.deploy(ethers.utils.parseEther("1000000000")); // 1B tokens
  await v3Token.deployed();
  console.log("✅ V3Token deployed to:", v3Token.address);

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

