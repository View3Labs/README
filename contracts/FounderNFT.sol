// ============================================================
// ⚠️  WARNING — DRAFT CONTRACT. NOTHING IS DEPLOYED.
// No View3Labs contract is live on any chain. Anything on-chain
// claiming to be $VIEW3 or the View3Labs Founder NFT is FAKE.
// The only official contract address will be posted in one
// channel of the View3Labs Discord, by the team, after a full
// independent audit. The team will never DM you first.
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title FounderNFT
 * @dev ERC-721 collection for View3Labs Founders (963 supply).
 *      Tiers: Founders' Circle (9) + Architect (90) invited,
 *      Pioneer (264) earned then minted, Genesis (600) public mint.
 *      Grants governance, access, and ecosystem utility. Equal rewards across tiers.
 *      Draft only — tier, pricing and mint logic to be added and audited before any deployment.
 */

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FounderNFT is ERC721Enumerable, Ownable {
    uint256 public constant MAX_SUPPLY = 963;
    uint256 public nextTokenId = 1;

    constructor() ERC721("View3Labs Founder NFT", "V3F") {}

    function mint(address to) external onlyOwner {
        require(nextTokenId <= MAX_SUPPLY, "Max supply reached");
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}
