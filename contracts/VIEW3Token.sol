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
 * @title VIEW3Token
 * @dev ERC-20 token for the View3Labs ecosystem.
 *      Utility and governance token. 1,000,000,000 fixed supply.
 *      Draft only — vesting and distribution logic to be added and audited before any deployment.
 */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract VIEW3Token is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000 * 10**18; // 1B tokens, fixed

    constructor() ERC20("View3Labs Token", "VIEW3") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
