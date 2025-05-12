// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BlogToken is ERC20 {
    constructor() ERC20("BLOG Token", "BLOG") {
        _mint(msg.sender, 1000000 * 10 ** 18); // Mint 1 million tokens to deployer
    }

    function mint(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(amount <= 1000 * 10 ** 18, "Max 1000 tokens can be minted");

        _mint(msg.sender, amount);
    }
}