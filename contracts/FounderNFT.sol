// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title FounderNFT
 * @dev ERC-721 NFT Collection for View3Labs Founders (888 supply).
 *      Grants governance, access, and ecosystem utility.
 */

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FounderNFT is ERC721Enumerable, Ownable {
    uint256 public constant MAX_SUPPLY = 888;
    uint256 public nextTokenId = 1;

    constructor() ERC721("View3Labs Founder NFT", "V3F") {}

    function mint(address to) external onlyOwner {
        require(nextTokenId <= MAX_SUPPLY, "Max supply reached");
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}
