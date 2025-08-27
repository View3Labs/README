// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Treasury {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}

    function withdraw(address payable to, uint256 amount) public {
        require(msg.sender == owner, "Not authorized");
        require(address(this).balance >= amount, "Insufficient funds");
        to.transfer(amount);
    }
}
