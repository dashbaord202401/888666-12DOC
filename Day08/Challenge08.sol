// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Challenge08 is ERC1155, Ownable {

    uint8 public constant MAX_NFTS = 10;

    mapping(address user => uint256 amount) balance;

    constructor() ERC1155("") Ownable(msg.sender) {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
    {
        require(balance[account] + amount <= MAX_NFTS, "Not allowed!");
        balance[account] += amount;
        _mint(account, id, amount, data);
    }
}