// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Challenge04 is ERC20 {
    constructor() ERC20("XMAS", "XMAS") {
        mint(msg.sender, 10_000e18);
    }

    function mint(address to, uint256 amount) private {
        _mint(to, amount);
    }
}