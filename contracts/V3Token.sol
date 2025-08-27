// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title V3Token
 * @dev ERC-20 token for the View3Labs ecosystem.
 *      Utility token for governance, access, and ecosystem alignment.
 */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract V3Token is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000 * 10**18; // 1B tokens

    constructor() ERC20("View3Labs Token", "V3") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
