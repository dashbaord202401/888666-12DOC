// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Challenge06 {

    mapping(address => uint256) public balance;

    event Deposited(address indexed depositor, uint256 amount);
    event Withdrawn(address indexed withdrawer, uint256 amount);


    function deposit() external payable {
        require(msg.value > 0, "Invalid amount");
        balance[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) external {
        require(amount > 0, "Invalid amount");
        require(balance[msg.sender] >= amount, "Insufficient balance");
        balance[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }
}