const hre = require("hardhat");

async function main() {
  const Party = await hre.ethers.getContractFactory("Party");
  const depositAmount = hre.ethers.utils.parseEther("0.01");

  const party = await Party.deploy(depositAmount);

  await party.deployed();

  console.log(
    `Party deployed to ${party.address}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
